//
//  REMABankAccountNumberFormatter.m
//  Mine Ansatte
//
//  Created by Christoffer Winterkvist on 9/23/14.
//  Copyright (c) 2014 Hyper. All rights reserved.
//

#import "REMABankAccountNumberFormatter.h"

@implementation REMABankAccountNumberFormatter

- (NSString *)formatString:(NSString *)string reverse:(BOOL)reverse
{
    string = [super formatString:string reverse:reverse];

    if (reverse) {
        return [string stringByReplacingOccurrencesOfString:@"." withString:@""];
    }

    NSMutableString *mutableString = [[NSMutableString alloc] initWithString:string];

    if ([mutableString length] > 4 && ![[mutableString substringWithRange:NSMakeRange(4,1)] isEqualToString:@"."]) {
        [mutableString insertString:@"." atIndex:4];
    }

    if ([mutableString length] > 9 && ![[mutableString substringWithRange:NSMakeRange(9,1)] isEqualToString:@"."]) {
        [mutableString insertString:@"." atIndex:9];
    }

    return [mutableString copy];
}

@end
