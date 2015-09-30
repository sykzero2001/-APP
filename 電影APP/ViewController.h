//
//  ViewController.h
//  電影APP
//
//  Created by 鄭涵嚴 on 2015/9/30.
//  Copyright © 2015年 鄭涵嚴. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
{
    __weak IBOutlet UILabel *warning;
    int sign_count;
    __weak IBOutlet UITextField *signtext;
    __weak IBOutlet UILabel *signlabel;
}
- (IBAction)signbutton:(UIButton *)sender;

@end

