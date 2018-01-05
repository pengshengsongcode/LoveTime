//
//  NSString+HBCExts.m
//  HBCRouter
//
//  Created by heke on 2016/11/16.
//  Copyright © 2016年 皇包车. All rights reserved.
//

#import "NSString+HBCExts.h"
#import <CommonCrypto/CommonDigest.h>

@implementation NSString (HBCExts)

// String -> NSDate
- (NSDate *)dateWithFormat:(NSString *)format {
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    formatter.dateFormat = format;
    formatter.calendar = [[NSCalendar alloc] initWithCalendarIdentifier:NSCalendarIdentifierGregorian];
    return [formatter dateFromString:self];
}

- (NSDate *)defaultDate {
    NSString *format = @"yyyy-MM-dd HH:mm:ss";
    if (self.length == 10) {
        format = @"yyyy-MM-dd";
    }
    return [self dateWithFormat:format];
}

@end
