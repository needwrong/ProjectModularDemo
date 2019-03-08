//
//  BusinessStaticLib.m
//  BusinessStaticLib
//
//  Created by Ni,Dong on 2019/3/8.
//  Copyright © 2019 Ni,Dong. All rights reserved.
//

#import "BusinessStaticLib.h"
#import <MGJRouter/MGJRouter.h>

@implementation BusinessStaticLib

+ (void)load {
    [MGJRouter registerURLPattern:@"demo://BusinessStaticLib" toHandler:^(NSDictionary *routerParameters) {
        NSLog(@"routerParameterUserInfo:%@", routerParameters[MGJRouterParameterUserInfo]);
        
        [self.class printInBusinessStaticLib];
    }];
}

+ (NSString *)printInBusinessStaticLib {
    NSString *str = @"print in BusinessStaticLib";
    NSLog(@"\n%@\n", str);
    return str;
}

@end
