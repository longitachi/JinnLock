# JinnLock
A gesture unlock view controller for iPhone and iPad by jinnchang.
# Preview
![image](https://github.com/jinnchang/JinnLock/blob/master/JinnLockExample/preview.gif)
# Usage
* Drag the JinnLock folder into your project and import the "JinnLockViewController.h"
```objective-c
#import "JinnLockViewController.h"
```
* JinnLockViewController
```objc
JinnLockViewController *lockViewController = [[JinnLockViewController alloc] initWithType:JinnLockTypeVerify appearMode:JinnLockAppearModePresent];
lockViewController.delegate = self;
[self presentViewController:lockViewController animated:YES completion:nil];
```
* JinnLockViewControllerDelegate
```objc
- (void)passwordDidCreate:(NSString *)newPassword;
- (void)passwordDidModify:(NSString *)newPassword;
- (void)passwordDidVerify:(NSString *)oldPassword;
- (void)passwordDidRemove;
```
* JinnLockPassword
```objc
+ (BOOL)isEncrypted;
+ (BOOL)setNewPassword:(NSString *)password;
+ (NSString *)oldPassword;
+ (void)removePassword;
```
# Blog
http://blog.csdn.net/jinnchang