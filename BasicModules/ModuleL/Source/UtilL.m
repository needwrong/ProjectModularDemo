//
//  UtilL.m
//  ModuleL
//
//  Created by neareast on 2018/8/10.
//  Copyright © 2018年 TB. All rights reserved.
//

#import "UtilL.h"
#import "Lottie.h"
#import <WebP/encode.h>
#import <MGJRouter/MGJRouter.h>

@implementation UtilL

+ (void)load {
    [MGJRouter registerURLPattern:@"demo://UtilL" toHandler:^(NSDictionary *routerParameters) {
        NSLog(@"routerParameterUserInfo:%@", routerParameters[MGJRouterParameterUserInfo]);
        
        [self.class stringMadeByL];
    }];
}

+ (NSString *)stringMadeByL {
    NSString *str = @"L inherited A & is SDK library";
    NSLog(@"%@\n", str);
    [UtilA stringFromA];
    return str;
}

+ (void)useLibs {
    LOTAnimationCache *cache = [LOTAnimationCache new];
    cache = nil;
    WebPConfig s;
    s.lossless = 0;
}

@end
