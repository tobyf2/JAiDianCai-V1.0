//
//  ViewController.m
//  JAidiancai V0.0
//
//  Created by Jinshi Feng on 2017/8/12.
//  Copyright © 2017年 Jinshi. All rights reserved.
//

#import "OrderMealViewController.h"
#import "OrderMealDataSource.h"
#import "CreatMealViewController.h"
#import "MealDetailViewController.h"

@interface OrderMealViewController () 
@property (weak, nonatomic) IBOutlet OrderMealDataSource *orderMealDataSource;
@property (weak, nonatomic) IBOutlet UITableView *tableView;
@end

@implementation OrderMealViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //self.tableView.estimatedRowHeight = 44;
    self.tableView.rowHeight = self.view.frame.size.width*0.55;
    // Do any additional setup after loading the view, typically from a nib.

    /*self.orderMealDataSource.meals = @[@"Sleepy", @"Sneezy", @"Bashful", @"Happy",
                                       @"Doc", @"Grumpy", @"Dopey",
                                       @"Thorin", @"Dorin", @"Nori", @"Ori",
                                       @"Balin", @"Dwalin", @"Fili", @"Kili",
                                       @"Oin", @"Gloin", @"Bifur", @"Bofur",
                                       @"Bombur"];*/
    
}

-(void)viewWillAppear:(BOOL)animated{
    
    self.orderMealDataSource.meals = self.stateController.ownedMealList;
    
    [self.tableView reloadData];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
    if ([segue.identifier  isEqual: @"CreatMealSegue"]){
        UINavigationController *navigationController = segue.destinationViewController;
        CreatMealViewController *creatMealController = navigationController.viewControllers.firstObject;
        creatMealController.stateController = self.stateController;
        
    }else if ([segue.identifier isEqualToString:@"MealDetailSegue"]){
        MealDetailViewController *mealDetailViewController = segue.destinationViewController;
        NSInteger selectedIndex = [self.tableView indexPathForSelectedRow].row;
        mealDetailViewController.meal = [self.stateController.ownedMealList objectAtIndex:selectedIndex];
        NSLog(@"%@", mealDetailViewController.meal.mealUUID);

        mealDetailViewController.mealIndexInOwnedMealList = selectedIndex;
        mealDetailViewController.stateController = self.stateController;
    }
}

- (IBAction)cancelMealCreation:(UIStoryboardSegue *)segue{
    
}
- (IBAction)saveMeal:(UIStoryboardSegue *)segue{
    
}

@end
