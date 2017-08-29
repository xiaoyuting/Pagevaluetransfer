//
//  data.h
//  属性代理通知单利block传值
//
//  Created by 雨停 on 2017/3/9.
//  Copyright © 2017年 yuting. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface data : NSObject
+(data*)instance;
@property (nonatomic,copy)NSString *str;
@end
