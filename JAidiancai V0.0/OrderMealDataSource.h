//
//  OrderMealDataSource.h
//  JAidiancai V0.0
//
//  Created by Jinshi Feng on 2017/8/12.
//  Copyright © 2017年 Jinshi. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface OrderMealDataSource : NSObject <UITableViewDataSource>
@property (strong, nonatomic) NSArray *meals;

@end
