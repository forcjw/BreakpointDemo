//
//  ViewController.m
//  BreakpointDemo
//
//  Created by cjw on 2018/7/3.
//  Copyright © 2018年 cjw. All rights reserved.
//
/*
 1、利用断点插入代码（作用：不用重新编译就能立即看到改动效果）（我觉得原文的“变更数值”和“插入代码”都可以算作插入代码）
 2、跳过不执行x行代码（作用：相当于删除x行代码，不用重新编译就能立即看到改动效果）
 3、一次性断点，从断点生成断点
 4、watch point，@property断点
 5、条件断点
 6、在汇编调用栈中打印函数实参
 */

#import "ViewController.h"

@interface ViewController ()

@property (nonatomic,strong)NSString *oriString;
@property (weak, nonatomic) IBOutlet UILabel *label;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.oriString = @"abc";
    
    NSLog(@"oriString is init as : %@",self.oriString);
    
}

- (IBAction)show:(id)sender {
    
    //断点插入代码
    NSLog(@"oriString is : %@",self.oriString);
    
    NSLog(@"oriString after modify is : %@",self.oriString);
    
    //断点删除（跳过）代码
    NSLog(@"1");
    NSLog(@"2");
    NSLog(@"3");
    NSLog(@"4");
    
    NSLog(@"there after");
    
    [_label setText:@"第1次被setText"];
    [_label setText:@"第2次被setText"];
    [_label setText:@"第3次被setText"];
    [_label setText:@"第4次被setText"];
    [_label setText:@"第5次被setText"];
    
    NSLog(@"there after is watch point demo");
    
    //watch point
    self.oriString = @"1";
    self.oriString = @"2";
    self.oriString = @"3";
    
    //条件断点
    for (int i=0; i<10; i++) {
        NSLog(@"the i value in for loop is : %d",i);
    }
    
}

@end
