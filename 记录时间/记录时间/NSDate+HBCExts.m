//
//  NSDate+HBCExts.m
//  HBCCAPP
//
//  Created by 侯文富 on 2016/12/15.
//  Copyright © 2016年 hbc. All rights reserved.
//

#import "NSDate+HBCExts.h"


@implementation NSDate (HBCEXts)

// 判断两个日期是否相同
- (BOOL)isSameDate:(NSDate *)date {
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    dateFormatter.dateFormat = @"yyyy-MM-dd";
    dateFormatter.calendar = [[NSCalendar alloc] initWithCalendarIdentifier:NSCalendarIdentifierGregorian];

    NSString *cacheCurrentDateText = [dateFormatter stringFromDate:self];
    NSString *dateText2 = [dateFormatter stringFromDate:date];

    if ([cacheCurrentDateText isEqualToString: dateText2]) {
        return YES;
    }
    return NO;
}

// 计算两个日期的间隔天数
- (NSInteger)dayIntervalWithDate:(NSDate *)date {
    NSTimeInterval time = [self timeIntervalSinceDate:date];
    NSInteger days = time / (3600 * 24);
    return labs(days);
}

// 日期转字符串
- (NSString *)stringValue {
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    dateFormatter.dateFormat = @"yyyy-MM-dd";
    dateFormatter.calendar = [[NSCalendar alloc] initWithCalendarIdentifier:NSCalendarIdentifierGregorian];
    return [dateFormatter stringFromDate:self];
}

- (NSString *)stringFullValue {
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    dateFormatter.dateFormat = @"yyyy-MM-dd HH:mm";
    dateFormatter.calendar = [[NSCalendar alloc] initWithCalendarIdentifier:NSCalendarIdentifierGregorian];
    return [dateFormatter stringFromDate:self];
}

- (NSString *)stringAPIValue {
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    dateFormatter.dateFormat = @"yyyy-MM-dd HH:mm:ss";
    dateFormatter.calendar = [[NSCalendar alloc] initWithCalendarIdentifier:NSCalendarIdentifierGregorian];
    return [dateFormatter stringFromDate:self];
}


- (NSString *)stringAPIValue_1 {
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    dateFormatter.dateFormat = @"HH:mm:ss";
    dateFormatter.calendar = [[NSCalendar alloc] initWithCalendarIdentifier:NSCalendarIdentifierGregorian];
    return [dateFormatter stringFromDate:self];
}

- (NSString *)stringTimeValue {
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    dateFormatter.dateFormat = @"HH:mm";
    dateFormatter.calendar = [[NSCalendar alloc] initWithCalendarIdentifier:NSCalendarIdentifierGregorian];
    return [dateFormatter stringFromDate:self];
}

- (NSString *)stringMonthValue {
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    dateFormatter.dateFormat = @"M月d日";
    dateFormatter.calendar = [[NSCalendar alloc] initWithCalendarIdentifier:NSCalendarIdentifierGregorian];
    return [dateFormatter stringFromDate:self];
}

- (NSString *)yearMonthValue {
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    dateFormatter.dateFormat = @"yyyy-MM";
    dateFormatter.calendar = [[NSCalendar alloc] initWithCalendarIdentifier:NSCalendarIdentifierGregorian];
    return [dateFormatter stringFromDate:self];
}

- (NSString *)year_MinValue {
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    dateFormatter.dateFormat = @"yyyy年MM月dd日 HH:mm:ss";
    dateFormatter.calendar = [[NSCalendar alloc] initWithCalendarIdentifier:NSCalendarIdentifierGregorian];
    return [dateFormatter stringFromDate:self];
}

- (NSString *)yearValue {
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    dateFormatter.dateFormat = @"yyyy年MM月dd日";
    dateFormatter.calendar = [[NSCalendar alloc] initWithCalendarIdentifier:NSCalendarIdentifierGregorian];
    return [dateFormatter stringFromDate:self];
}

- (NSString *)monthValue {
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    dateFormatter.dateFormat = @"M月d日";
    dateFormatter.calendar = [[NSCalendar alloc] initWithCalendarIdentifier:NSCalendarIdentifierGregorian];
    return [dateFormatter stringFromDate:self];
}

- (NSString *)stringFullValue3 {
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    dateFormatter.dateFormat = @"yyyy年M月d日 HH:mm";
    dateFormatter.calendar = [[NSCalendar alloc] initWithCalendarIdentifier:NSCalendarIdentifierGregorian];
    return [dateFormatter stringFromDate:self];
}

- (NSString *)stringFullValue4 {
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    dateFormatter.AMSymbol = @"上午";
    dateFormatter.PMSymbol = @"下午";
    dateFormatter.dateFormat = @"yyyy年M月d日 aaa hh:mm";
//    dateFormatter.dateFormat = @"yyyy年M月d日 hh:mm";
    dateFormatter.calendar = [[NSCalendar alloc] initWithCalendarIdentifier:NSCalendarIdentifierGregorian];
    return [dateFormatter stringFromDate:self];
}

- (NSString *)stringFullValue5 {
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    dateFormatter.AMSymbol = @"上午";
    dateFormatter.PMSymbol = @"下午";
    dateFormatter.dateFormat = @"aaa hh:mm";
    //    dateFormatter.dateFormat = @"yyyy年M月d日 hh:mm";
    dateFormatter.calendar = [[NSCalendar alloc] initWithCalendarIdentifier:NSCalendarIdentifierGregorian];
    return [dateFormatter stringFromDate:self];
}


- (NSString *)yearString {
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    dateFormatter.dateFormat = @"yyyy";
    dateFormatter.calendar = [[NSCalendar alloc] initWithCalendarIdentifier:NSCalendarIdentifierGregorian];
    return [dateFormatter stringFromDate:self];
}

- (NSString *)monthString {
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    dateFormatter.dateFormat = @"MM";
    dateFormatter.calendar = [[NSCalendar alloc] initWithCalendarIdentifier:NSCalendarIdentifierGregorian];
    return [dateFormatter stringFromDate:self];
}

- (NSString *)year_monthString {
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    dateFormatter.dateFormat = @"yyyy-MM";
    dateFormatter.calendar = [[NSCalendar alloc] initWithCalendarIdentifier:NSCalendarIdentifierGregorian];
    return [dateFormatter stringFromDate:self];
}

- (NSString *)format:(NSString *)format {
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    dateFormatter.dateFormat = format;
    dateFormatter.calendar = [[NSCalendar alloc] initWithCalendarIdentifier:NSCalendarIdentifierGregorian];
    return [dateFormatter stringFromDate:self];
}

- (NSDate *)ignoringTime {
    NSCalendar *calendar = [[NSCalendar alloc] initWithCalendarIdentifier:NSCalendarIdentifierGregorian];
    NSCalendarUnit unitFlags = NSCalendarUnitYear| NSCalendarUnitMonth | NSCalendarUnitDay | NSCalendarUnitHour;
    NSDateComponents *component = [calendar components:unitFlags fromDate:self];
    component.hour = 0;
    return [calendar dateFromComponents:component];
}

- (NSString *)weekValue {
    NSCalendar *calendar = [[NSCalendar alloc] initWithCalendarIdentifier:NSCalendarIdentifierGregorian];
    NSCalendarUnit unitFlags = NSCalendarUnitYear| NSCalendarUnitMonth | NSCalendarUnitDay | NSCalendarUnitHour | NSCalendarUnitMinute | NSCalendarUnitWeekday;
    NSDateComponents *component = [calendar components:unitFlags fromDate:self];
    NSInteger weekday = component.weekday;
    NSString *daystr = @"";

    switch (weekday) {
        case 1:
            daystr = @"周日";
            break;
        case 2:
            daystr = @"周一";
            break;
        case 3:
            daystr = @"周二";
            break;
        case 4:
            daystr = @"周三";
            break;
        case 5:
            daystr = @"周四";
            break;
        case 6:
            daystr = @"周五";
            break;
        case 7:
            daystr = @"周六";
            break;
        default:
            break;
    }
    return daystr;
}

+ (NSString *)getDateAfterGivenDateByDays:(NSInteger)days dateStr:(NSString *)dateStr {
    
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    formatter.dateFormat = @"yyyy-MM-dd";
    NSDate *date = [formatter dateFromString:dateStr];
    NSDate *newDate = [[NSDate alloc] initWithTimeIntervalSinceReferenceDate:date.timeIntervalSinceReferenceDate + 86400 * days];
    return [formatter stringFromDate:newDate];
    
}



- (NSString *)stringValue2 {
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    dateFormatter.dateFormat = @"yyyy年M月d日";
    dateFormatter.calendar = [[NSCalendar alloc] initWithCalendarIdentifier:NSCalendarIdentifierGregorian];
    return [dateFormatter stringFromDate:self];
}



- (NSInteger)minuteValue {
    NSCalendar *calendar = [[NSCalendar alloc] initWithCalendarIdentifier:NSCalendarIdentifierGregorian];
    NSCalendarUnit unitFlags = NSCalendarUnitYear| NSCalendarUnitMonth | NSCalendarUnitDay | NSCalendarUnitHour | NSCalendarUnitMinute | NSCalendarUnitWeekday;
    NSDateComponents *component = [calendar components:unitFlags fromDate:self];
    
    return component.minute;
}


@end
