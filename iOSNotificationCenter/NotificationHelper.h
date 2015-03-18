//
//  NotificationHelper.h
//  iOSNotificationCenter
//
//  Created by emilianoeloi on 3/15/15.
//  Copyright (c) 2015 Emiliano Eloi. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol NotificationHelperDelegate <NSObject>

-(void)changeName:(NSString *) newName;

@end

@interface NotificationHelper : NSObject

@property (nonatomic, strong) id delegate;

-(void) registerNotification;
-(void) unregisterNotification;
-(void) postChangeName:(NSString *)name;

@end
