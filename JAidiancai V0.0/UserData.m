//
//  User.m
//  JAidiancai V0.0
//
//  Created by Jinshi Feng on 2017/8/13.
//  Copyright © 2017年 Jinshi. All rights reserved.
//

#import "UserData.h"

@implementation UserData

- (instancetype)init{
    if(self = [super init]){
        //self.userName;
        //NSMutableArray<Meal *> *testingMealList = [[NSMutableArray alloc] init];

        self.ownedMealUUIDList = [[NSMutableArray alloc] init];
    }
    return self;
}


- (NSDictionary *)plistRepresentation {
/*
    NSMutableArray *plistedOwnedMealList = [NSMutableArray arrayWithCapacity:[self.ownedMealList count]];
    
    [self.ownedMealList enumerateObjectsUsingBlock:^(Meal *obj, NSUInteger idx, BOOL *stop) {
        NSDictionary *mappedPlistedMeal = obj.plistRepresentation;
        [plistedOwnedMealList addObject:mappedPlistedMeal];
    }];
    

    NSMutableArray *plistedSharingMealList = [NSMutableArray arrayWithCapacity:[self.sharingMealList count]];
    [self.sharingMealList enumerateObjectsUsingBlock:^(Meal *obj, NSUInteger idx, BOOL *stop) {
        NSDictionary *mappedPlistedMeal = obj.plistRepresentation;
        [plistedSharingMealList addObject:mappedPlistedMeal];
    }];
    
    NSMutableArray *plistedSharedMealList = [NSMutableArray arrayWithCapacity:[self.sharedMealList count]];
    [self.sharedMealList enumerateObjectsUsingBlock:^(Meal *obj, NSUInteger idx, BOOL *stop) {
        NSDictionary *mappedPlistedMeal = obj.plistRepresentation;
        [plistedSharedMealList addObject:mappedPlistedMeal];
    }];
*/

    return @{
             @"userName":_userName,
             @"ownedMealList":_ownedMealUUIDList,
//@"friends":_friends,
//@"sharingMealList":plistedSharingMealList,
//@"sharedMealList":plistedSharedMealList,
             };
}

-(instancetype)init:(NSDictionary *)plist{
    if (self = [self init]){
        
        self.userName = plist[@"userName"];
        self.ownedMealUUIDList = plist[@"ownedMealList"];
/*
        NSArray *plistedOwnedMealList = plist[@"ownedMealList"];
        
        if (!plistedOwnedMealList){
            self.ownedMealList = [[NSMutableArray alloc] init];
        }else{
    
        //将从Plist字典中得到的plist化的字典Array（即：这个Array中的成员都是Meal中的plistRepresentation属性），转化成非字典的Array。
        NSMutableArray *unplistedOwnedMealList = [NSMutableArray arrayWithCapacity:[plistedOwnedMealList count]];
        [plistedOwnedMealList enumerateObjectsUsingBlock:^(NSDictionary *obj, NSUInteger idx, BOOL *stop){
            Meal *unplistedMeal = [[Meal alloc] initWithPlistFile:obj];
            [unplistedOwnedMealList addObject:unplistedMeal];
        }];

        self.ownedMealList = unplistedOwnedMealList;
        }
        //self.friends = plist[@"friends"];
        //NSArray *plistedSharingMealList = plist[@"sharingMealList"];
        //NSArray *plistedSharedMealList = plist[@"sharedMealList"];

        NSMutableArray *unplistedSharingMealList = [NSMutableArray arrayWithCapacity:[plistedSharingMealList count]];
        [plistedSharingMealList enumerateObjectsUsingBlock:^(NSDictionary *obj, NSUInteger idx, BOOL *stop){
            Meal *unplistedMeal = [[Meal alloc] initWithPlistFile:obj];
            [unplistedSharingMealList addObject:unplistedMeal];
        }];
        
        NSMutableArray *unplistedSharedMealList = [NSMutableArray arrayWithCapacity:[plistedSharedMealList count]];
        [plistedSharedMealList enumerateObjectsUsingBlock:^(NSDictionary *obj, NSUInteger idx, BOOL *stop){
            Meal *unplistedMeal = [[Meal alloc] initWithPlistFile:obj];
            [unplistedSharedMealList addObject:unplistedMeal];
        }];
*/ 
//self.sharingMealList = unplistedSharingMealList;
//self.sharedMealList = unplistedSharedMealList;
    }
    return self;
}

@end
