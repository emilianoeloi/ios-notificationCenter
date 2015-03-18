//
//  NotificationHelper.m
//  iOSNotificationCenter
//
//  Created by emilianoeloi on 3/15/15.
//  Copyright (c) 2015 Emiliano Eloi. All rights reserved.
//

#import "NotificationHelper.h"



@implementation NotificationHelper

-(void) registerNotification{
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(handlerNotification:) name:kChangeNameNotification object:nil];
}
-(void) unregisterNotification{
    [[NSNotificationCenter defaultCenter] removeObserver:kChangeNameNotification];
}
-(void)postChangeName:(NSString *)name{
    [[NSNotificationCenter defaultCenter] postNotificationName:kChangeNameNotification object:nil userInfo:@{kUserNameKey:name}];
}
-(void)handlerNotification:(NSNotification *)notification{
    NSDictionary *info = notification.userInfo;
    if (_delegate && [_delegate respondsToSelector:@selector(changeName:)]) {
        [_delegate changeName:[info valueForKey:kUserNameKey]];
    }
}

@end
