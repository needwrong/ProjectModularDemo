//
//  UtilA.m
//  ModuleA
//
//  Created by neareast on 2018/8/10.
//  Copyright © 2018年 TB. All rights reserved.
//

#import "UtilA.h"
#import <MGJRouter/MGJRouter.h>

@implementation UtilA

+ (void)load {
    [MGJRouter registerURLPattern:@"demo://UtilA" toHandler:^(NSDictionary *routerParameters) {
        NSLog(@"routerParameterUserInfo:%@", routerParameters[MGJRouterParameterUserInfo]);
        
        [self.class stringFromA];
    }];
}

+ (NSString *)stringFromA {
    NSString *str = @"A is basic SDK";
    NSLog(@"\n%@\n", str);
    return str;
}

@end
