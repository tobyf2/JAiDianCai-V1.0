//
//  Meal.m
//  JAidiancai V0.0
//
//  Created by Jinshi Feng on 2017/8/13.
//  Copyright © 2017年 Jinshi. All rights reserved.
//

#import "Meal.h"

@implementation Meal


- (NSDictionary *) plistRepresentation {
    
    NSMutableDictionary *plistTmp = [[NSMutableDictionary alloc]init];
    
    NSNumber *isSharingInNSNumberStyle = [NSNumber numberWithBool:self.isSharing];
    NSData *mealImageInNSDataStyle = UIImagePNGRepresentation(self.mealImage);
    
    [plistTmp setValue:self.mealUUID forKey:@"mealUUID"];
    [plistTmp setValue:self.owner forKey:@"owner"];
    [plistTmp setValue:self.mealName forKey:@"mealName"];
    [plistTmp setValue:self.buildDate forKey:@"buildDate"];
    [plistTmp setValue:isSharingInNSNumberStyle forKey:@"isSharing"];
    [plistTmp setValue:mealImageInNSDataStyle forKey:@"mealImage"];
    
    return plistTmp;
}

- (instancetype)initWithPlistFile:(NSDictionary *)plist {
    if (self = [super init]){
    self.mealUUID = plist[@"mealUUID"];
    self.owner = plist[@"owner"];
    self.mealName = plist[@"mealName"];
    self.buildDate = plist[@"buildDate"];
    self.isSharing = [plist[@"isSharing"] boolValue];
    self.mealImage = [UIImage imageWithData:plist[@"mealImage"]];

    }
    return self;
}


@end
