//
//  CDSideBarController.m
//  DoubanFM
//
//  Created by lkjy on 16/5/6.
//  Copyright © 2016年 杨青云. All rights reserved.
//

#import "CDSideBarController.h"
static CDSideBarController *sharedInstance;

@implementation CDSideBarController
@synthesize menuColor = _menuColor;
@synthesize isOpen = _isOpen;
#pragma mark - Singleton

+(CDSideBarController *)sharedInstanceWithImages:(NSArray*)images
{
    //整个片断在程序运行过程中只执行一遍
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedInstance = [[CDSideBarController alloc]initWithImages:images];
    });
    return sharedInstance;
}

+(CDSideBarController *)sharedInstance
{
    if (sharedInstance != nil)
    {
        return sharedInstance;
    }
    return nil;
}

+(instancetype)allocWithZone:(struct _NSZone *)zone{
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        if (sharedInstance == nil)
        {
            sharedInstance = [super allocWithZone:zone];
        }
    });
    return sharedInstance;
}

@end
