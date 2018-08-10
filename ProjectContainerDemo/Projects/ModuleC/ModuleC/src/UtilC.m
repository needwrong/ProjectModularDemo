//
//  UtilC.m
//  ModuleC
//
//  Created by neareast on 2018/8/10.
//  Copyright © 2018年 TB. All rights reserved.
//

#import "UtilC.h"
#import <ModuleB/UtilB.h>

@implementation UtilC

+ (NSString *)stringPunchingC {
    NSString *str = @"C is business and inherit A & print B";
    NSLog(@"\n%@\n", str);
    [UtilB stringMadeByB];
    return str;
}

@end
