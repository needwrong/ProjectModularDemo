//
//  ViewController.m
//  ProjectContainerDemo
//
//  Created by neareast on 2018/8/10.
//  Copyright © 2018年 TB. All rights reserved.
//

#import "ViewController.h"

#import <ModuleB/UtilB.h>
//UtilB.h没有添加到ModuleB.h中，有警告
#import <ModuleC/UtilC.h>
#import <ModuleD/UtilD.h>
#import <ModuleInStandalone/StandaloneUtil.h>
#import "UtilL.h"

@interface ViewController ()

@property (nonatomic, strong) UITextView *txtView;
@property (nonatomic, strong) UIImageView *img;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    CGFloat marginTop = 50.;
    self.txtView = [[UITextView alloc] initWithFrame:CGRectOffset(self.view.frame, 0, marginTop)];
    
    NSMutableString *output = [NSMutableString stringWithFormat:@"Project container uses B&C&D&L\n\n"];
    [output appendString:[UtilB stringMadeByB]];
    [output appendString:@"\n"];
    
    [output appendString:[UtilC stringPunchingC]];
    [output appendString:@"\n"];
    
    [output appendString:[UtilD stringTrumpD]];
    [output appendString:@"\n"];
    
    [output appendString:[UtilL stringMadeByL]];
    [output appendString:@"\n"];
    
    self.txtView.text = output;
    [self.txtView sizeToFit];
    [self.view addSubview:self.txtView];
    
    self.img = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"moduleChart"]];
//    self.img.contentMode = UIViewContentModeScaleAspectFit;
    CGFloat scale = self.img.frame.size.width / self.view.frame.size.width;
    self.img.frame = CGRectMake(0, CGRectGetMaxY(self.txtView.frame), self.view.frame.size.width, self.img.frame.size.height / scale);
    [self.view addSubview:self.img];
    
    /****************** trigger StandaloneUtil and load it's image in bundle  ******************/
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeSystem];
    [btn setTitle:@"Use StandAlone" forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(onButtonClicked:) forControlEvents:UIControlEventTouchUpInside];
    
    [btn sizeToFit];
    btn.center = CGPointMake(self.view.center.x, marginTop + CGRectGetMaxY(self.img.frame));
    [self.view addSubview:btn];
}

- (void)onButtonClicked:(id)sender {
    self.txtView.text = [StandaloneUtil stringFromStandalone];
    
    //读取framework内bundle资源的通用写法
    NSBundle *frameworkBundle = [NSBundle bundleForClass:[StandaloneUtil class]];
    NSString *path = [frameworkBundle pathForResource:@"moduleChartNew" ofType:@"png" inDirectory:@"resources.bundle"];
    self.img.image = [UIImage imageWithContentsOfFile:path];
    [self.img sizeToFit];
    
    CGFloat scale = self.img.frame.size.width / self.view.frame.size.width;
    self.img.frame = CGRectMake(0, CGRectGetMaxY(self.txtView.frame), self.view.frame.size.width, self.img.frame.size.height / scale);
    
    UIButton *btn = sender;
    [btn removeFromSuperview];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
