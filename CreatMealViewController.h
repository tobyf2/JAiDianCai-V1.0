//
//  CreatMealViewController.h
//  JAidiancai V0.0
//
//  Created by Jinshi Feng on 2017/8/18.
//  Copyright © 2017年 Jinshi. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "StateController.h"

@interface CreatMealViewController : UIViewController <UINavigationControllerDelegate,UIImagePickerControllerDelegate>
@property(strong,nonatomic)StateController *stateController;
@end
