//
//  StorageController.m
//  JAidiancai V0.0
//
//  Created by Jinshi Feng on 2017/8/13.
//  Copyright © 2017年 Jinshi. All rights reserved.
//

#import "StorageController.h"

@interface StorageController ()

@property (strong,nonatomic,readonly) NSURL *documentsDirectoryURL;
@property (strong,nonatomic,readonly) NSURL *userDataFileURL;

@end

@implementation StorageController

-(NSURL *)documentsDirectoryURL {
    
    return [[NSFileManager defaultManager] URLsForDirectory:NSDocumentDirectory inDomains:NSUserDomainMask].firstObject;//return the URL of the documents directory(which is the directory in which you save the data of an iOS app
}

-(NSURL *)userDataFileURL {
    return [[self.documentsDirectoryURL URLByAppendingPathComponent: @"UserDataForMealUUIDList"] URLByAppendingPathExtension:@"plist"];//creat the full URL of the file in which we will save the User *user
}

- (void)delet{
    [[NSFileManager defaultManager] removeItemAtURL:self.userDataFileURL error:nil];
}

-(void)saveUserData:(UserData *)userData{
    [userData.plistRepresentation writeToURL:self.userDataFileURL atomically:TRUE];//use NSDictionary的writeToURL:atomically:方法，把user存在指定的地址
}

-(UserData *)fetchUserData{

    NSDictionary *plistRepresentation = [NSDictionary dictionaryWithContentsOfURL:self.userDataFileURL];//把指定地址中的plist文件取出成NSDictionary格式，然后下面一行代码再用这个NSDictionary初始化usr
    
    if (plistRepresentation == nil){
        return NULL;
    }
    
    return [[UserData alloc] init:plistRepresentation];
    
}

- (Meal *)fetchMeal:(NSString *)mealUUID{
    NSURL *mealPlistFileURL = [[self.documentsDirectoryURL URLByAppendingPathComponent: mealUUID] URLByAppendingPathExtension:@"plist"]; //得到存meal的plist地址
    NSDictionary *mealPlist = [NSDictionary dictionaryWithContentsOfURL:mealPlistFileURL];
    return [[Meal alloc] initWithPlistFile:mealPlist];
}

-(void)saveMeal:(Meal *)meal {

    NSURL *mealPlistFileURL = [[self.documentsDirectoryURL URLByAppendingPathComponent: meal.mealUUID] URLByAppendingPathExtension:@"plist"]; //得到存meal的plist地址
    [meal.plistRepresentation writeToURL:mealPlistFileURL atomically:true];

}


@end
