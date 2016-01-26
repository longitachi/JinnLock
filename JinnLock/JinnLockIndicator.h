/*******************************************************************************
 ** Copyright © 2016年 Jinnchang. All rights reserved.
 ** Giuhub: https://github.com/jinnchang
 **
 ** FileName: JinnLockIndicator.h
 ** Description: 解锁密码小指示器
 **
 ** History
 ** ----------------------------------------------------------------------------
 ** Author: Jinnchang
 ** Date: 2016-01-26
 ** Description: 创建文件
 ******************************************************************************/

#import <UIKit/UIKit.h>

@interface JinnLockIndicator : UIView

- (instancetype)init;

- (void)showPassword:(NSString *)password;
- (void)reset;

@end