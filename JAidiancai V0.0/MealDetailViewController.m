//
//  MealDetailViewController.m
//  JAidiancai V0.0
//
//  Created by Jinshi Feng on 2017/8/18.
//  Copyright © 2017年 Jinshi. All rights reserved.
//

#import "MealDetailViewController.h"

@interface MealDetailViewController ()
@property(weak, nonatomic) IBOutlet UILabel *mealName;
@property(weak, nonatomic) IBOutlet UILabel *OwnerName;
@property(weak, nonatomic) IBOutlet UILabel *buildDate;
@property(weak, nonatomic) IBOutlet UISwitch *isSharingSwitch;
@property(weak, nonatomic) IBOutlet UIImageView *mealImageView;

@end

@implementation MealDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.

}

- (void)viewWillAppear:(BOOL)animated{
    self.mealName.text = self.meal.mealName;
    self.OwnerName.text =self.meal.owner;
    self.mealImageView.image = self.meal.mealImage;

    NSDateFormatter *builDateFormatter = [[NSDateFormatter alloc] init];
    builDateFormatter.dateStyle = NSDateFormatterLongStyle;
    builDateFormatter.timeStyle = NSDateFormatterNoStyle;
    self.buildDate.text = [builDateFormatter stringFromDate:self.meal.buildDate];
    
    self.isSharingSwitch.on = self.meal.isSharing;
}
- (IBAction)changeMealSharingStatus:(UISwitch *)sender {
    NSLog(@"%@", self.meal.mealUUID);

    self.meal.isSharing = self.isSharingSwitch.on;
    [self.stateController updateMeal:self.meal];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
