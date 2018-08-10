//
//  UtilD.m
//  ModuleD
//
//  Created by neareast on 2018/8/10.
//  Copyright © 2018年 TB. All rights reserved.
//

#import "UtilD.h"
#import "UtilL.h"
#import <ModuleC/UtilC.h>

@implementation UtilD

+ (NSString *)stringTrumpD {
    NSString *str = @"Donald J. Trump is Dump and print C & L";
    NSLog(@"%@", str);
    [UtilC stringPunchingC];
    [UtilL stringMadeByL];
    return str;
}

@end
