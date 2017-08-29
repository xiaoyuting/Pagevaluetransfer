//
//  data.m
//  属性代理通知单利block传值
//
//  Created by 雨停 on 2017/3/9.
//  Copyright © 2017年 yuting. All rights reserved.
//

#import "data.h"

@implementation data
static data * sdata =nil;
+(data*)instance{
    if(sdata==nil){
        sdata = [[data alloc]init];
        
    }
    return sdata;
}
@end
