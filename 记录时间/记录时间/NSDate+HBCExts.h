//
//  NSDate+HBCExts.h
//  HBCCAPP
//
//  Created by 侯文富 on 2016/12/15.
//  Copyright © 2016年 hbc. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface NSDate (HBCEXts)

// 判断两个日期是否相同
- (BOOL)isSameDate:(NSDate *)date;

// 计算两个日期的间隔天数
- (NSInteger)dayIntervalWithDate:(NSDate *)date;

// 日期转字符串
- (NSString *)stringValue;

- (NSString *)stringFullValue;

- (NSString *)stringAPIValue;

- (NSString *)stringTimeValue;

- (NSString *)yearMonthValue;

//2017年7月1日 09:30
- (NSString *)year_MinValue;

- (NSString *)stringMonthValue;
- (NSString *)yearValue;

- (NSString *)monthValue;

- (NSString *)stringFullValue3;

- (NSString *)stringFullValue4;

- (NSString *)stringFullValue5;

- (NSString *)yearString;

- (NSString *)monthString;

- (NSString *)year_monthString;

- (NSString *)format:(NSString *)format;

- (NSDate *)ignoringTime;

- (NSString *)weekValue;

- (NSInteger)minuteValue;

- (NSString *)stringValue2;

- (NSString *)stringAPIValue_1;

+ (NSString *)getDateAfterGivenDateByDays:(NSInteger)days dateStr:(NSString *)dateStr;

@end
