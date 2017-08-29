//
//  ViewController.m
//  属性代理通知单利block传值
//
//  Created by 雨停 on 2017/3/9.
//  Copyright © 2017年 yuting. All rights reserved.
//

#import "ViewController.h"
#import "NextViewController.h"
#import "data.h"
@interface ViewController ()<cheshidelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    
    data *d= [data instance];
    self.view.backgroundColor=[UIColor redColor];
    d.str=@"wqewqewewq";
    [super viewDidLoad];
    [self setNotation];
    self.navigationItem.leftBarButtonItem =[[UIBarButtonItem alloc]initWithTitle:@"nihao" style:UIBarButtonItemStyleDone target:self action:@selector(left)];
}
-(void)left{
    NextViewController * vic =[[NextViewController alloc]init];
    __block ViewController  *selfblock=self;
    vic.block= ^(NSString *str){
        selfblock.title=str;
        
    };
    vic.delegate=self;
    //弹出动画风格
    //vic.modalTransitionStyle=UIModalTransitionStyleFlipHorizontal;
    //弹出页面风格
    
   // vic.modalPresentationStyle = UIModalPresentationCustom;
    [self presentViewController:vic animated:YES completion:nil];
    
}
-(void)setback:(NSString *)str{
    NSLog(@"str===%@",str);
}
-(void)setNotation{
[[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(setNotationFoundation:) name:@"zhuce" object:nil];
    
}
-(void)setNotationFoundation :(NSNotification *)notion{
    NSLog(@"notion==%@",notion.object);
    
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(void)viewWillDisappear:(BOOL)animated{
    [[NSNotificationCenter defaultCenter]removeObserver:self];
}

@end
