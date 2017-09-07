//
//  User.h
//  JAidiancai V0.0
//
//  Created by Jinshi Feng on 2017/8/13.
//  Copyright © 2017年 Jinshi. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Meal.h"

@interface UserData : NSObject
@property (copy, nonatomic) NSString *userName;
@property (strong, nonatomic) NSMutableArray<NSString *> *ownedMealUUIDList;

//@property (copy, nonatomic) NSArray<NSString *> *friends;
//@property (copy, nonatomic) NSMutableArray<Meal *> *sharingMealList;
//@property (copy, nonatomic) NSMutableArray<Meal *> *sharedMealList;
//@property (copy, nonatomic) NSArray *historyOders;

@property (strong, nonatomic) NSDictionary *plistRepresentation;

-(instancetype)init:(NSDictionary *)plist;


@end
