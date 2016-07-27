//
//  ViewController.m
//  JYCircleController
//
//  Created by JourneyYoung on 16/7/27.
//  Copyright © 2016年 JourneyYoung. All rights reserved.
//

#import "ViewController.h"
#import "DBSphereView.h"
#define JSColor(r, g, b) [UIColor colorWithRed:(r)/255.0 green:(g)/255.0 blue:(b)/255.0 alpha:1.0]

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSMutableArray *array = [NSMutableArray arrayWithObjects:@"测试",@"北京",@"石家庄",@"重庆",@"南宁",@"苏州",@"上海",@"杭州",@"直布罗陀",@"努巴尼",@"那斯卡娅",@"西藏",@"江苏",@"成都",@"信息",@"麦克雷",@"闪光",@"巴西",@"黑色城镇",@"很强",@"名字难想",@"源氏",@"半藏", nil];
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    DBSphereView *sphereview = [[DBSphereView alloc]init];
    sphereview.frame = CGRectMake(0, 0, 250, 250);
    sphereview.center = CGPointMake([UIScreen mainScreen].bounds.size.width*0.5, [UIScreen mainScreen].bounds.size.height*0.5);
    
    
    NSMutableArray *arr = [NSMutableArray array];
    
    for(int i=0;i<array.count;i++)
    {
        UIButton *btn = [UIButton buttonWithType:UIButtonTypeSystem];
        [btn setTitle:array[i] forState:UIControlStateNormal];
        [btn setTitleColor:JSColor(arc4random_uniform(256), arc4random_uniform(256), arc4random_uniform(256)) forState:UIControlStateNormal];
        btn.titleLabel.font = [UIFont systemFontOfSize:15];
        btn.frame = CGRectMake(0, 0, 60, 20);
        [btn addTarget:self action:@selector(buttonPressed:) forControlEvents:UIControlEventTouchUpInside];
        [arr addObject:btn];
        [sphereview addSubview:btn];
    }
    [sphereview setCloudTags:arr];
    sphereview.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:sphereview];
    // Do any additional setup after loading the view, typically from a nib.
}


-(void)buttonPressed:(UIButton *)btn
{
    NSLog(@"%@",[NSString stringWithFormat:@"点击了%@",btn.titleLabel.text]);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
