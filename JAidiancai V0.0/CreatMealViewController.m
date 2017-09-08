//
//  CreatMealViewController.m
//  JAidiancai V0.0
//
//  Created by Jinshi Feng on 2017/8/18.
//  Copyright © 2017年 Jinshi. All rights reserved.
//

#import "CreatMealViewController.h"
#import "Meal.h"


@interface CreatMealViewController ()
@property(weak, nonatomic) IBOutlet UITextField *mealName;
@property(weak, nonatomic) IBOutlet UITextField *OwnerName;
@property(weak, nonatomic) IBOutlet UISwitch *isSharingSwitch;
@property(weak, nonatomic) IBOutlet UIImageView *mealImage;
@property(weak, nonatomic) IBOutlet UILabel *addPhoto;
@property (weak, nonatomic) IBOutlet UILabel *sharingLabel;


@end

@implementation CreatMealViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.OwnerName.text = self.stateController.userData.userName;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)shareingSetting:(UISwitch *)sender {
    if(self.isSharingSwitch.on){
        self.sharingLabel.text = @"your friends can see";
    }else{
        self.sharingLabel.text = @"only you can see";
    }
}




// 使用UIImagePickerController从手机相册选照片。
//注意选完照片之后，会调用下面的🍎<UINavigationControllerDelegate,UIImagePickerControllerDelegate>Delegate方法。
- (IBAction)pickingMealImage:(UITapGestureRecognizer *)sender {
    
    UIImagePickerController *imagePickerController = [[UIImagePickerController alloc] init];
    imagePickerController.sourceType = UIImagePickerControllerSourceTypePhotoLibrary;
    imagePickerController.delegate = self;
    [self presentViewController:imagePickerController animated:YES completion:nil];

}
//🍎<UINavigationControllerDelegate,UIImagePickerControllerDelegate>Delegate方法。
- (void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary<NSString *,id> *)info{
    [picker dismissViewControllerAnimated:YES completion:NULL];
    UIImage *selectedImage = [info objectForKey:UIImagePickerControllerOriginalImage];
    
    self.addPhoto.hidden = YES;
    self.mealImage.backgroundColor = nil;
    self.mealImage.image = selectedImage;
}



#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
    if (![segue.identifier isEqualToString:@"SaveMealSegue"]){
        return;
    }
    Meal *meal = [[Meal alloc]init];
    meal.mealUUID = [[NSUUID UUID] UUIDString];

    meal.mealName = self.mealName.text;
    meal.owner = self.OwnerName.text;
    meal.buildDate = [NSDate date];
    meal.isSharing = self.isSharingSwitch.on;
    meal.mealImage = self.mealImage.image;

    [self.stateController addMealToUserData:meal];
   
    for (Meal *mealtep in self.stateController.ownedMealList){
        NSLog(@"%@", mealtep.mealUUID);
    }
    //[self.stateController.userData.ownedMealList addObject:meal];
    //[self.stateController.storageController save:self.stateController.userData];

}

@end
