//
//  SidebarController.m
//  DoubanFM
//
//  Created by lkjy on 16/5/5.
//  Copyright © 2016年 杨青云. All rights reserved.
//

#import "SidebarController.h"

@interface SidebarController ()
{
    AppDelegate* appDelegate;
}
@end

@implementation SidebarController

- (void)viewDidLoad {
    [super viewDidLoad];
    appDelegate = [[UIApplication sharedApplication]delegate];
    NSArray* imageList = @[[UIImage imageNamed:@"menuPlayer"],
                          [UIImage imageNamed:@"menuChannel"],
                          [UIImage imageNamed:@"menuLogin"],
                          [UIImage imageNamed:@"menuClose.png"]];
     UIStoryboard *mainStoryboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(BOOL)canBecomeFirstResponder
{
    return YES;
}
-(void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    self.tabBar.hidden = YES;
    for (UIView *child in self.tabBar.subviews)
    {
        if ([child isKindOfClass:[UIControl class]])
        {
            [child removeFromSuperview];
        }
    }
}

#pragma mark - CDSidebar Delegate
-(void)menuButtonClicked:(int)index{
    self.selectedIndex = index;
    switch (index) {
        case 0:
        case 1:
        case 2:
            self.selectedIndex = index;
            break;
        case 3:
            break;
    }
   
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
