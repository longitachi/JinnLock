/*******************************************************************************
 ** Copyright © 2016年 Jinnchang. All rights reserved.
 ** Giuhub: https://github.com/jinnchang
 **
 ** FileName: JinnLockPassword.h
 ** Description: 密码管理操作
 **
 ** History
 ** ----------------------------------------------------------------------------
 ** Author: Jinnchang
 ** Date: 2016-01-26
 ** Description: 创建文件
 ******************************************************************************/

#import <UIKit/UIKit.h>

@interface JinnLockPassword : NSObject

+ (BOOL)isEncrypted;
+ (BOOL)setNewPassword:(NSString *)password;
+ (NSString *)oldPassword;
+ (void)removePassword;

@end