//
//  ViewController.m
//  JinnLockExample
//
//  Created by jinnchang on 16/1/26.
//  Copyright © 2016年 Jinnchang. All rights reserved.
//

#import "ViewController.h"
#import "JinnLockViewController.h"

@interface ViewController () <JinnLockViewControllerDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (IBAction)create:(id)sender
{
    JinnLockViewController *lockViewController = [[JinnLockViewController alloc] initWithType:JinnLockTypeCreate
                                                                                   appearMode:JinnLockAppearModePresent
                                                 minCount:4];
    [lockViewController setDelegate:self];
    [self presentViewController:lockViewController animated:YES completion:nil];
}

- (IBAction)modify:(id)sender
{
    JinnLockViewController *lockViewController = [[JinnLockViewController alloc] initWithType:JinnLockTypeModify
                                                                                   appearMode:JinnLockAppearModePresent
                                                 minCount:4];
    [lockViewController setDelegate:self];
    [self presentViewController:lockViewController animated:YES completion:nil];
}

- (IBAction)verify:(id)sender
{
    JinnLockViewController *lockViewController = [[JinnLockViewController alloc] initWithType:JinnLockTypeVerify
                                                                                   appearMode:JinnLockAppearModePresent
                                                 minCount:0];
    [lockViewController setDelegate:self];
    [self presentViewController:lockViewController animated:YES completion:nil];
}

- (IBAction)remove:(id)sender
{
    JinnLockViewController *lockViewController = [[JinnLockViewController alloc] initWithType:JinnLockTypeRemove
                                                                                   appearMode:JinnLockAppearModePresent
                                                 minCount:0];
    [lockViewController setDelegate:self];
    [self presentViewController:lockViewController animated:YES completion:nil];
}

#pragma mark - JinnLockViewControllerDelegate

- (void)passwordDidCreate:(NSString *)newPassword
{
    NSLog(@"密码创建成功:%@", newPassword);
}

- (void)passwordDidModify:(NSString *)newPassword
{
    NSLog(@"密码修改成功:%@", newPassword);
}

- (void)passwordDidVerify:(NSString *)oldPassword
{
    NSLog(@"密码验证成功:%@", oldPassword);
}

- (void)passwordDidRemove
{
    NSLog(@"密码删除成功");
}

@end