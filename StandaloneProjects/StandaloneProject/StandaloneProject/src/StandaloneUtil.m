//
//  StandaloneUtil.m
//  StandaloneProject
//
//  Created by neareast on 2018/8/11.
//  Copyright © 2018年 TBC. All rights reserved.
//

#import "StandaloneUtil.h"
#import <ModuleB/ModuleB.h>

@implementation StandaloneUtil

+ (NSString *)stringFromStandalone {
    NSString *str = @"StandaloneUtil inherited A and print B";
    NSLog(@"\n%@\n", str);
    
    [UtilB stringMadeByB];
    return str;
}

@end
