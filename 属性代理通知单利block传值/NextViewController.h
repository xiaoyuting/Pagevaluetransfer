//
//  NextViewController.h
//  属性代理通知单利block传值
//
//  Created by 雨停 on 2017/3/9.
//  Copyright © 2017年 yuting. All rights reserved.
//

#import <UIKit/UIKit.h>
@protocol cheshidelegate<NSObject>
-(void)setback :(NSString *)str;
@end
@interface NextViewController : UIViewController
@property (nonatomic,copy)void(^block)(NSString *str);
@property (nonatomic,assign)id <cheshidelegate>delegate;
@end
