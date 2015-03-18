//
//  ContentViewController.m
//  iOSNotificationCenter
//
//  Created by emilianoeloi on 3/15/15.
//  Copyright (c) 2015 Emiliano Eloi. All rights reserved.
//

#import "ContentViewController.h"
#import "NotificationHelper.h"

@interface ContentViewController () <NotificationHelperDelegate>
@property (weak, nonatomic) IBOutlet UILabel *userName;
@property (weak, nonatomic) IBOutlet UITextField *userNameText;
@property (nonatomic, strong) NotificationHelper *notificationHelper;

@end

@implementation ContentViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _notificationHelper = [[NotificationHelper alloc]init];
    _notificationHelper.delegate = self;
    [_notificationHelper registerNotification];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)changeUserName:(id)sender {
    [_notificationHelper postChangeName:_userNameText.text];
}

-(void)changeName:(NSString *)newName{
    _userName.text = newName;
}

-(void)dealloc{
    [_notificationHelper unregisterNotification];
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
