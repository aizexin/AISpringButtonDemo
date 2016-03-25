# AISpringButtonDemo
弹簧效果按钮
</p>
AISpringButton *btn = [[AISpringButton alloc]initWithFrame:CGRectMake(0, 0, 100, 182)];
    btn.center = self.view.center;
    
    //标题的方向
    btn.titleDirection = TitleDirection_bottom;
    [btn setTitle:@"我是标题"];
    [btn setNormalImageName:@"deng" andSelectedImageName:@"deng"];
    [btn addTarget:self action:@selector(onClickBtn:) forControlEvents:(UIControlEventTouchUpInside)];
    [self.view addSubview:btn];
![image](https://github.com/aizexin/AISpringButtonDemo/raw/master/弹簧按钮.gif) 
