//
//  StorageController.h
//  JAidiancai V0.0
//
//  Created by Jinshi Feng on 2017/8/13.
//  Copyright © 2017年 Jinshi. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "UserData.h"

@interface StorageController : NSObject

- (UserData *)fetchUserData;
- (Meal *)fetchMeal: (NSString *)mealUUID;
- (void)saveMeal:(Meal *)meal;
- (void)saveUserData:(UserData *)userData;
- (void)delet;

@end
