//
//  NEBD.m
//  BusinessDynamic
//
//  Created by Ni,Dong on 2019/3/8.
//  Copyright © 2019 Ni,Dong. All rights reserved.
//

#import "NEBD.h"
#import <MGJRouter/MGJRouter.h>

@implementation NEBD

+ (void)load {
    [MGJRouter registerURLPattern:@"demo://NEBD" toHandler:^(NSDictionary *routerParameters) {
        NSLog(@"routerParameterUserInfo:%@", routerParameters[MGJRouterParameterUserInfo]);
        
        [self.class printInNEBD];
    }];
}

+ (NSString *)printInNEBD {
    NSString *str = @"print in NEBD";
    NSLog(@"\n%@\n", str);
    return str;
}

@end
