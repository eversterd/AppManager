//
//  CZAppInfoView.m
//  AppManager
//
//  Created by shiyc on 15/12/14.
//  Copyright © 2015年 shiyc. All rights reserved.
//

#import "CZAppInfoView.h"
#import "CZAppInfo.h"

@implementation CZAppInfoView
- (IBAction)downloadClick:(UIButton *)sender
{
    self.superview.userInteractionEnabled=NO;
    sender.enabled=NO;
    //pop out a tip in the middle of the screen
    UILabel *tipView=[[UILabel alloc] init];
    [self.superview addSubview:tipView];
    tipView.text=[NSString stringWithFormat:@"DLING:%@",self.appInfo.name];
    
    CGFloat tipW=150;
    CGFloat tipH=25;
    CGFloat tipX=(self.superview.frame.size.width-tipW)/2;
    CGFloat tipY=(self.superview.frame.size.height-tipH)/2;
    tipView.frame=CGRectMake(tipX, tipY, tipW,tipH);
    tipView.backgroundColor=[UIColor redColor];
    tipView.textAlignment=NSTextAlignmentCenter;
    tipView.alpha=0;
    tipView.layer.cornerRadius=10;
    tipView.layer.masksToBounds=YES;
    [UIView animateWithDuration:1.00 animations:^{tipView.alpha=0.9;} completion:^(BOOL finished){
        [UIView animateWithDuration:1.0 delay:3.0 options:UIViewAnimationOptionCurveLinear animations:^{
            tipView.alpha=0;
        } completion:^(BOOL finished) {
            [tipView removeFromSuperview];
            self.superview.userInteractionEnabled=YES;
        }];
    }];
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/


+(instancetype) CZAppInfoView
{
    NSBundle *bundle=[NSBundle mainBundle];
    CZAppInfoView *subView=[[bundle loadNibNamed:@"CZAppInfoView" owner:nil options:nil] lastObject];
    return subView;
}
-(void)setAppInfo:(CZAppInfo *)appInfo
{
    _appInfo=appInfo;
    self.nameView.text=appInfo.name;
    self.iconView.image=[UIImage imageNamed:appInfo.icon];
    
}
@end
