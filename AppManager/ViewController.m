//
//  ViewController.m
//  AppManager
//
//  Created by shiyc on 15/12/11.
//  Copyright © 2015年 shiyc. All rights reserved.
//
#import "CZAppInfo.h"
#import "ViewController.h"
#import "CZAppInfoView.h"
@interface ViewController ()
@property (nonatomic ,strong) NSArray *appInfos;

@end

@implementation ViewController

-(NSArray *)appInfos{
    if (_appInfos==nil)
    {
        _appInfos=[CZAppInfo appInfosList];
    }
   
    return _appInfos;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    CGFloat subViewW =100;
    CGFloat subViewH =100;
    CGFloat marginX=(self.view.frame.size.width-3*subViewW)/4;
    CGFloat marginY=20;
  
    // Do any additional setup after loading the view, typically from a nib.
    for (int i=0; i<self.appInfos.count; i++) {
       
        CZAppInfoView *subView=[CZAppInfoView CZAppInfoView];
        [self.view addSubview:subView];
        int row=i/3;
        int column=i%3;
        CGFloat subViewX=marginX+column*(marginX+subViewW);
        CGFloat subViewY=20+row*(marginY+subViewH);
        subView.frame=CGRectMake(subViewX, subViewY, subViewW, subViewH);
     
        CZAppInfo *appInfo=self.appInfos[i];
        subView.appInfo=appInfo;
    }
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
