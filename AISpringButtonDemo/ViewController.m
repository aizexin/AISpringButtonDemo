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
/** 选择按钮 */
@property (weak,nonatomic)UISegmentedControl *segment;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    AISpringButton *btn = [[AISpringButton alloc]initWithFrame:CGRectMake(0, 0, 100, 182)];
    btn.center = self.view.center;
    //标题的方向
    btn.titleDirection = TitleDirection_bottom;
    self.springBtn = btn;
    [btn setTitle:@"我是标题"];
    [btn setNormalImageName:@"deng" andSelectedImageName:@"deng"];
    [btn addTarget:self action:@selector(onClickBtn:) forControlEvents:(UIControlEventTouchUpInside)];
    [self.view addSubview:btn];
    
    NSArray *itemArray = @[@"最小动画",@"一次弹簧动画",@"无动画"];
    UISegmentedControl *segment = [[UISegmentedControl alloc]initWithItems:itemArray];
    self.segment = segment;
    [self.view addSubview:segment];
    [segment addObserver:self forKeyPath:@"selectedSegmentIndex" options:(NSKeyValueObservingOptionNew) context:nil];
    segment.selectedSegmentIndex = 0;
    CGFloat segmentW = self.view.frame.size.width;
    CGFloat segmentH = 30;
    CGFloat segmentY = self.view.frame.size.height - segmentH;
    CGFloat segmentX = 0;
    segment.frame = CGRectMake(segmentX, segmentY, segmentW, segmentH);
    
}

#pragma mark ---点击事件
-(void)onClickBtn:(AISpringButton*)btn{
    btn.selected = !btn.isSelected;
}

#pragma mark ----KVO
-(void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary<NSString *,id> *)change context:(void *)context{
    NSLog(@"%@",change);
    switch ([change[@"new"]integerValue]) {
        case 0:
            self.springBtn.springAnimation = NO;
            self.springBtn.minAnimation = YES;
            break;
        case 1:
            self.springBtn.minAnimation = NO;
            self.springBtn.springAnimation = YES;
            break;
        case 2:
            self.springBtn.minAnimation = NO;
            self.springBtn.springAnimation = NO;
            break;
        default:
            break;
    }
}

@end
