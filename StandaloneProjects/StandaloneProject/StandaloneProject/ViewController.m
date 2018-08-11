//
//  ViewController.m
//  StandaloneProject
//
//  Created by neareast on 2018/8/11.
//  Copyright © 2018年 TBC. All rights reserved.
//

#import "ViewController.h"
#import <ModuleD/ModuleD.h>
#import "StandaloneUtil.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UITextView *txtView;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *heightTxtView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.txtView.text = [NSString stringWithFormat:@"Standalone project uses self & D:\n\n%@\n\n%@",
                         [StandaloneUtil stringFromStandalone], [UtilD stringTrumpD]];
    self.heightTxtView.constant = 20 + [self.txtView sizeThatFits:self.view.frame.size].height;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
