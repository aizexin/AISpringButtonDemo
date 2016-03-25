//
//  ViewController.m
//  AISpringButtonDemo
//
//  Created by 艾泽鑫 on 16/3/20.
//  Copyright © 2016年 艾泽鑫. All rights reserved.
//

#import "ViewController.h"
#import "AISpringButton.h"
@interface ViewController ()
/** 动画按钮 */
@property (weak,nonatomic)AISpringButton *springBtn;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    AISpringButton *btn = [[AISpringButton alloc]initWithFrame:CGRectMake(0, 0, 310, 310)];
    btn.titleDirection = TitleDirection_right;
    self.springBtn = btn;
    
//    [btn setTitle:@"我是标题"];
    [btn setNormalImageName:@"xing" andSelectedImageName:@"xing"];
    [btn addTarget:self action:@selector(onClickBtn:) forControlEvents:(UIControlEventTouchUpInside)];
    btn.backgroundColor = [UIColor redColor];
    [self.view addSubview:btn];
    
    UIButton *changeBtn = [UIButton buttonWithType:(UIButtonTypeCustom)];
    changeBtn.backgroundColor = [UIColor greenColor];
    changeBtn.frame = CGRectMake(100, 300, 50, 50);
    [changeBtn addTarget:self action:@selector(onClickChange:) forControlEvents:(UIControlEventTouchUpInside)];
    [self.view addSubview:changeBtn];
    
}

#pragma mark ---点击事件
-(void)onClickBtn:(AISpringButton*)btn{
    btn.selected = !btn.isSelected;
    static int i=0;
    [btn setTitle:[NSString stringWithFormat:@"%d",i++]];
}
-(void)onClickChange:(UIButton*)changeBtn{
    changeBtn.selected = !changeBtn.isSelected;
    NSString *title = changeBtn.isSelected?@"已关":@"已开";
    [changeBtn setTitle:title forState:(UIControlStateNormal)];
    self.springBtn.springAnimation = changeBtn.isSelected;
}

@end
