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
#import "UtilL.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    CGFloat marginTop = 50.;
    UITextView *txtView = [[UITextView alloc] initWithFrame:CGRectOffset(self.view.frame, 0, marginTop)];
    
    NSMutableString *output = [NSMutableString stringWithFormat:@"Project container uses B&C&D&L\n\n"];
    [output appendString:[UtilB stringMadeByB]];
    [output appendString:@"\n"];
    
    [output appendString:[UtilC stringPunchingC]];
    [output appendString:@"\n"];
    
    [output appendString:[UtilD stringTrumpD]];
    [output appendString:@"\n"];
    
    [output appendString:[UtilL stringMadeByL]];
    [output appendString:@"\n"];

    txtView.text = output;
    [txtView sizeToFit];
    [self.view addSubview:txtView];
    
    UIImageView *img = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"moduleChart"]];
    CGFloat scale = img.frame.size.width / self.view.frame.size.width;
    img.frame = CGRectMake(0, txtView.frame.size.height + marginTop, self.view.frame.size.width, img.frame.size.height / scale);
    [self.view addSubview:img];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
