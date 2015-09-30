//
//  ViewController.m
//  電影APP
//
//  Created by 鄭涵嚴 on 2015/9/30.
//  Copyright © 2015年 鄭涵嚴. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    sign_count = 0 ;
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)signbutton:(UIButton *)sender {
    NSString  *message = [signtext.text stringByTrimmingCharactersInSet:
               [NSCharacterSet whitespaceAndNewlineCharacterSet]];
    NSComparisonResult result = [message compare:@""];
    if(result == NSOrderedSame){
        warning.text = [NSString stringWithFormat:@"名字不能留白"];
    }
    else if(sign_count == 3){
        warning.text = [NSString stringWithFormat:@"只能簽三筆"];
    }
    else
    {
        sign_count = sign_count +1;
       NSString *tmp_str = [signtext.text stringByAppendingString:@"\n"];
        signlabel.text  = [signlabel.text stringByAppendingString:tmp_str];
        warning.text = [NSString stringWithFormat:@""];
        signtext.text = [NSString stringWithFormat:@""];
    }
}
@end
