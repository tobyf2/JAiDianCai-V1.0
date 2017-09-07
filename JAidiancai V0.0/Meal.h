//
//  Meal.h
//  JAidiancai V0.0
//
//  Created by Jinshi Feng on 2017/8/13.
//  Copyright © 2017年 Jinshi. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
@class UserData;

typedef enum MealCategory: NSInteger {
    kLiangcai = 1,
    kXiajiucai,
    kXiafancai,
    kOthers
}MealCategory;

typedef enum SpicyLevel: NSInteger {
    kNoSpicy = 1,
    kSpicy,
    kVerySpicy
}SpicyLevel;

@interface Meal : NSObject

@property (copy, nonatomic) NSString *mealUUID;//菜品的唯一标识
@property (copy, nonatomic) NSString *owner;//菜品的主人
@property (copy, nonatomic) NSString *mealName;//菜品名称
@property (copy, nonatomic) NSDate *buildDate;//这条菜品的建立日期
@property (assign, nonatomic) BOOL isSharing; // 即便shareToUsers不为空，当isSharing是NO时也不共享
@property (copy, nonatomic) UIImage *mealImage;//菜品的照
@property (copy, nonatomic) NSMutableArray *supperOwner;//数据库管理员是所有菜品的主人

@property (strong,nonatomic) NSDictionary *plistRepresentation;

-(instancetype)initWithPlistFile:(NSDictionary *)plist;

@end
//@property (copy, nonatomic) NSString *mealIndentifier;//菜品索引号
//@property (copy, nonatomic) UIImage *mealImage;//菜品的照
//@property (assign, nonatomic) MealCategory category;//菜品种类
//@property (assign, nonatomic) SpicyLevel spicyLevel;//辣度范围
//@property (copy, nonatomic) NSString *comments;//这条菜品介绍
//@property (copy, nonatomic) NSArray<NSString *> *shareToUsers;//愿意与之共享的好友清单



