//
//  UtilD.m
//  ModuleD
//
//  Created by neareast on 2018/8/10.
//  Copyright © 2018年 TB. All rights reserved.
//

#import "UtilD.h"
#import "UtilL.h"
//业务层直接相互引用，是一种不好的设计方式
#import <ModuleC/UtilC.h>

@implementation UtilD

+ (NSString *)stringTrumpD {
    NSString *str = @"Donald J. Trump is Dump, use L & badly use C";
    NSLog(@"%@", str);
    [UtilC stringPunchingC];
    [UtilL stringMadeByL];
    return str;
}

@end
