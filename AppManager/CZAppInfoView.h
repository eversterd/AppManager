//
//  CZAppInfoView.h
//  AppManager
//
//  Created by shiyc on 15/12/14.
//  Copyright © 2015年 shiyc. All rights reserved.
//

#import <UIKit/UIKit.h>
@class CZAppInfo;
@interface CZAppInfoView : UIView

@property (weak, nonatomic) IBOutlet UIImageView *iconView;
@property (weak, nonatomic) IBOutlet UILabel *nameView;
@property (weak, nonatomic) IBOutlet UIButton *downloadBtn;
@property (nonatomic,strong) CZAppInfo *appInfo;
+(instancetype) CZAppInfoView;

@end
