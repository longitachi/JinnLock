/*******************************************************************************
 ** Copyright © 2016年 Jinnchang. All rights reserved.
 ** Giuhub: https://github.com/jinnchang
 **
 ** FileName: JinnLockCircle.h
 ** Description: 圆圈
 **
 ** History
 ** ----------------------------------------------------------------------------
 ** Author: Jinnchang
 ** Date: 2016-01-26
 ** Description: 创建文件
 ******************************************************************************/

#import <UIKit/UIKit.h>

typedef NS_ENUM(NSInteger, JinnLockCircleState)
{
    JinnLockCircleStateNormal = 0,
    JinnLockCircleStateSelected,
    JinnLockCircleStateFill,
    JinnLockCircleStateError
};

@interface JinnLockCircle : UIView

@property (nonatomic, assign) JinnLockCircleState state;
@property (nonatomic, assign) CGFloat diameter;

- (instancetype)initWithDiameter:(CGFloat)diameter;
- (void)updateCircleState:(JinnLockCircleState)state;

@end