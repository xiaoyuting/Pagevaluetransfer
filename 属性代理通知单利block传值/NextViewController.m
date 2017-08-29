//
//  NextViewController.m
//  属性代理通知单利block传值
//
//  Created by 雨停 on 2017/3/9.
//  Copyright © 2017年 yuting. All rights reserved.
//

#import "NextViewController.h"
#import "data.h"
@interface NextViewController ()

@end

@implementation NextViewController

- (void)viewDidLoad {
    data *nextdata = [data instance];
    NSLog(@"nextdata=====%@",nextdata.str);
    [super viewDidLoad];
    [self postNotation];
    UIButton *btn =[[UIButton alloc]initWithFrame:self.view.bounds];
    [btn addTarget:self action:@selector(back) forControlEvents:UIControlEventTouchUpInside  ];
    
    [self.view addSubview:btn];
    // Do any additional setup after loading the view.
}
-(void)back{
    self.block(@"wqewqewqewqewqeqweqw");
    [self.delegate setback:@"wohuilaile "];
    [self dismissViewControllerAnimated:YES completion:nil];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(void)postNotation{
    [[NSNotificationCenter defaultCenter]postNotificationName:@"zhuce" object:@"wqewqewqe"];
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
