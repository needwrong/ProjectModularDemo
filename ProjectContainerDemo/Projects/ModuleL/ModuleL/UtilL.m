//
//  UtilL.m
//  ModuleL
//
//  Created by neareast on 2018/8/10.
//  Copyright © 2018年 TB. All rights reserved.
//

#import "UtilL.h"

@implementation UtilL

+ (NSString *)stringMadeByL {
    NSString *str = @"L inherited A & is SDK library";
    NSLog(@"%@\n", str);
    [UtilA stringFromA];
    return str;
}

@end
