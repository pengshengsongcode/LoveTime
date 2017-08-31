//
//  ViewController.m
//  记录时间
//
//  Created by 彭盛凇 on 2017/8/31.
//  Copyright © 2017年 huangbaoche. All rights reserved.
//

#import "ViewController.h"
#import "NSDate+HBCExts.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UILabel *label;

@property (nonatomic, strong) NSTimer *timer;

@end

@implementation ViewController

- (void)timerFired {
    
    NSString *specialDay = @"2017-08-01";
    
    NSDate *nowDate = [NSDate date];
    
    NSString *nowDateString = [nowDate stringValue];
    NSString *nowDateTimeString = [nowDate stringAPIValue_1];
    
    NSArray *nowDateArr = [nowDateString componentsSeparatedByString:@"-"];
    NSArray *specialArr = [specialDay componentsSeparatedByString:@"-"];
    NSArray *nowDateTimeArr = [nowDateTimeString componentsSeparatedByString:@":"];
    
    NSString *year = @"";
    NSString *Month = @"";
    NSString *Day = @"";
    NSString *HH =@"";
    NSString *mm =@"";
    NSString *ss =@"";
    
    
    if (nowDateArr.count == 3 && specialArr.count == 3 && nowDateTimeArr.count == 3) {
        
        year = [NSString stringWithFormat:@"%ld年", [nowDateArr[0] integerValue] - [specialArr[0] integerValue]];
        Month = [NSString stringWithFormat:@"%ld月", [nowDateArr[1] integerValue] - [specialArr[1] integerValue]];
        Day = [NSString stringWithFormat:@"%ld天", [nowDateArr[2] integerValue] - [specialArr[2] integerValue]];
        
        HH = [NSString stringWithFormat:@"%ld小时", [nowDateTimeArr[0] integerValue]];
        mm = [NSString stringWithFormat:@"%ld分钟", [nowDateTimeArr[1] integerValue]];
        ss = [NSString stringWithFormat:@"%ld秒", [nowDateTimeArr[2] integerValue]];
    }
    
    NSString *string = [NSString stringWithFormat:@"%@%@%@ %@%@%@", year, Month, Day, HH, mm, ss];
    
    NSMutableAttributedString *AttributedStr = [[NSMutableAttributedString alloc]initWithString:string];
    
    [AttributedStr addAttribute:NSForegroundColorAttributeName
     
                          value:[UIColor colorWithRed:arc4random() % 255 / 255.0f green:arc4random() % 255 / 255.0f blue:arc4random() % 255 / 255.0f alpha:1]
     
                          range:[string rangeOfString:year]];
    
    [AttributedStr addAttribute:NSForegroundColorAttributeName
     
                          value:[UIColor colorWithRed:arc4random() % 255 / 255.0f green:arc4random() % 255 / 255.0f blue:arc4random() % 255 / 255.0f alpha:1]
     
                          range:[string rangeOfString:Month]];
    
    [AttributedStr addAttribute:NSForegroundColorAttributeName
     
                          value:[UIColor colorWithRed:arc4random() % 255 / 255.0f green:arc4random() % 255 / 255.0f blue:arc4random() % 255 / 255.0f alpha:1]
     
                          range:[string rangeOfString:Day]];
    
    [AttributedStr addAttribute:NSForegroundColorAttributeName
     
                          value:[UIColor colorWithRed:arc4random() % 255 / 255.0f green:arc4random() % 255 / 255.0f blue:arc4random() % 255 / 255.0f alpha:1]
     
                          range:[string rangeOfString:HH]];
    
    [AttributedStr addAttribute:NSForegroundColorAttributeName
     
                          value:[UIColor colorWithRed:arc4random() % 255 / 255.0f green:arc4random() % 255 / 255.0f blue:arc4random() % 255 / 255.0f alpha:1]
     
                          range:[string rangeOfString:mm]];
    
    [AttributedStr addAttribute:NSForegroundColorAttributeName
     
                          value:[UIColor colorWithRed:arc4random() % 255 / 255.0f green:arc4random() % 255 / 255.0f blue:arc4random() % 255 / 255.0f alpha:1]
     
                          range:[string rangeOfString:ss]];
    
    
    [UIView animateWithDuration:0.2 animations:^{
        
        self.label.attributedText = AttributedStr;
    }];
    

}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.timer = [NSTimer scheduledTimerWithTimeInterval:1.0 target:self selector:@selector(timerFired) userInfo:nil repeats:YES];
    
    [self.timer fire];
    
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
