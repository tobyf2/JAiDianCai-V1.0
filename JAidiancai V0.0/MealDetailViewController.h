//
//  MealDetailViewController.h
//  JAidiancai V0.0
//
//  Created by Jinshi Feng on 2017/8/18.
//  Copyright © 2017年 Jinshi. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Meal.h"
#import "StateController.h"

@interface MealDetailViewController : UIViewController
@property (strong, nonatomic) Meal *meal;
@property (nonatomic) NSInteger mealIndexInOwnedMealList;
@property (strong, nonatomic) StateController *stateController;
@end
