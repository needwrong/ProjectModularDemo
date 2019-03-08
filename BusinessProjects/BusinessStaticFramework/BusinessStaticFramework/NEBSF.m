//
//  NEBSF.m
//  BusinessStaticFramework
//
//  Created by Ni,Dong on 2019/3/8.
//  Copyright © 2019 Ni,Dong. All rights reserved.
//

#import "NEBSF.h"
#import <MGJRouter/MGJRouter.h>

@implementation NEBSF

+ (void)load {
    [MGJRouter registerURLPattern:@"demo://NEBSF" toHandler:^(NSDictionary *routerParameters) {
        NSLog(@"routerParameterUserInfo:%@", routerParameters[MGJRouterParameterUserInfo]);
        
        [self.class printInNEBSF];
    }];
}

+ (NSString *)printInNEBSF {
    NSString *str = @"print in NEBSF";
    NSLog(@"\n%@\n", str);
    return str;
}

@end
