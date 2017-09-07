//
//  StateController.m
//  JAidiancai V0.0
//
//  Created by Jinshi Feng on 2017/8/15.
//  Copyright © 2017年 Jinshi. All rights reserved.
//

#import "StateController.h"


@implementation StateController

- (instancetype)initWith:(StorageController *)storageC {
    if (self = [super init]){
        self.storageController = storageC;
        self.userData = [storageC fetchUserData];
        if (!self.userData){
            self.userData = [[UserData alloc] init];
        }
    }
    return self;
}

    
- (NSMutableArray *) ownedMealList {
    NSMutableArray<Meal *> *ownedMealListTemp = [[NSMutableArray alloc] initWithCapacity:[self.userData.ownedMealUUIDList count]];
    for(NSString *mealUUIDtemp in self.userData.ownedMealUUIDList){
        NSLog(@"%@", mealUUIDtemp);

        [ownedMealListTemp addObject:[self.storageController fetchMeal:mealUUIDtemp]];
    }
    return ownedMealListTemp;
}

- (void)addMealToUserData:(Meal *)meal{
    
    NSLog(@"%@", meal.mealUUID);
    
    [self.storageController saveMeal:meal];
    [self.userData.ownedMealUUIDList addObject:meal.mealUUID];
    [self.storageController saveUserData:self.userData];
  
    NSLog(@"%@", meal.mealUUID);

}

- (void)updateMeal:(Meal *)meal {
    NSLog(@"%@", meal.mealUUID);

    [self.storageController saveMeal:meal];
    NSLog(@"%@", meal.mealUUID);

}

/*
- (void)addNewMealToUserOwnedMealListWith:(Meal *)meal {
    [self.userData.ownedMealList addObject:meal];
    [self.storageController save:self.userData];
}

- (void)addNewMealToUserSharingMealListWith:(Meal *)meal {
    [self.userData.sharedMealList addObject:meal];
}

- (void)addNewMealToUserSharedMealListWith:(Meal *)meal {
    [self.userData.sharedMealList addObject:meal];

}

- (void)removeMealfromUserOwnedMealListOfMealIndifier:(NSString *)mealIdentifier{
    
}
*/



@end
