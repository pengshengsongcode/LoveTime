//
//  ViewController.m
//  记录时间
//
//  Created by 彭盛凇 on 2017/8/31.
//  Copyright © 2017年 huangbaoche. All rights reserved.
//

#import "ViewController.h"
#import "NSDate+HBCExts.h"

#import "NSString+HBCExts.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UILabel *label;

@property (nonatomic, strong) NSTimer *timer;

@end

@implementation ViewController

- (void)timerFired {
    
    NSString *specialDay = @"2017-08-01";
    
    NSDate *nowDate = [NSDate date];
    
    NSDate *speciaDate = [specialDay defaultDate];
    
    NSInteger day = [nowDate dayIntervalWithDate:speciaDate];
    
    NSString *string = [NSString stringWithFormat:@"在一起了%ld天啦~~~~~😊😊😊", day];

    NSMutableAttributedString *AttributedStr = [[NSMutableAttributedString alloc]initWithString:string];

    [AttributedStr addAttribute:NSForegroundColorAttributeName
     
                          value:[UIColor colorWithRed:arc4random() % 255 / 255.0f green:arc4random() % 255 / 255.0f blue:arc4random() % 255 / 255.0f alpha:1]
     
                          range:[string rangeOfString:string]];

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
