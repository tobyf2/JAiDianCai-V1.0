//
//  OrderMealDataSource.m
//  JAidiancai V0.0
//
//  Created by Jinshi Feng on 2017/8/12.
//  Copyright © 2017年 Jinshi. All rights reserved.
//

#import "OrderMealDataSource.h"
#import "MealCell.h"
#import "Meal.h"
@interface OrderMealDataSource ()

//@property (strong, nonatomic) NSArray *meals;

@end

@implementation OrderMealDataSource

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return [self.meals count];
    //return 1;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    static NSString *MealCellIndentifier = @"MealCellIndentifier";
    Meal *meal = [self.meals objectAtIndex:indexPath.row];

    MealCell *cell = [tableView dequeueReusableCellWithIdentifier:MealCellIndentifier forIndexPath:indexPath];
    
    //cell.mealName.text = @"the first meal";
    
    
/*
    MealCell *cell = [tableView dequeueReusableCellWithIdentifier:MealCellIndentifier];
    
    if(cell == nil) {
        cell = [[MealCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:MealCellIndentifier];
    }
*/
    //UIImage *image = [UIImage imageNamed:@"star"];
    //cell.imageView.image = image;
    //UIImage *highlightedImage = [UIImage imageNamed:@"star2"];
    //cell.imageView.highlightedImage = highlightedImage;
    
    cell.mealName.text = meal.mealName;
    cell.mealImageView.image = meal.mealImage;
    
    return cell;

}

@end
