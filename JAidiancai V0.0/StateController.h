//
//  StateController.h
//  JAidiancai V0.0
//
//  Created by Jinshi Feng on 2017/8/15.
//  Copyright © 2017年 Jinshi. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "StorageController.h"
#import "UserData.h"

@interface StateController : NSObject

@property(retain, nonatomic) StorageController *storageController;
@property (nonatomic) NSInteger tracker;
@property(strong, nonatomic) UserData *userData;
@property(strong, nonatomic) NSMutableArray<Meal *> *ownedMealList;

- (instancetype)initWith:(StorageController *)storageC;
- (void)addMealToUserData: (Meal *) meal;
- (void)updateMeal: (Meal *) meal;
//- (void)addNewMealToUserOwnedMealListWith:(Meal *)meal;
//- (void)addNewMealToUserSharingMealListWith:(Meal *)meal;
//- (void)addNewMealToUserSharedMealListWith:(Meal *)meal;

//- (void)removeMealfromUserOwnedMealListOfMealIndifier:(NSString *)mealIdentifier;

//- (void)updateMealfromUserOwnedMealListOfMealIndifier:(Meal *)meal withIndex:(NSInteger)index;

@end
