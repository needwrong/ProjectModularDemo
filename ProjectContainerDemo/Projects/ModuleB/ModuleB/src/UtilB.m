//
//  UtilB.m
//  ModuleB
//
//  Created by neareast on 2018/8/10.
//  Copyright © 2018年 TB. All rights reserved.
//

#import "UtilB.h"
#import "UtilL.h"

@implementation UtilB

+ (NSString *)stringMadeByB {
    NSString *str = @"B is platform inherited A and print L";
    NSLog(@"\n%@\n", str);
    [UtilL stringMadeByL];
    return str;
}

@end
