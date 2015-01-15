//
//  SimulateActionSheet.h
//  SimulateActionSheet
//
//  Created by 张 聪 on 15/1/14.
//  Copyright (c) 2015年 张 聪. All rights reserved.
//
#import <UIKit/UIKit.h>

@protocol SimulateActionSheetDelegate <UIPickerViewDelegate>
-(void)actionCancle;
-(void)actionDone;
@end

@interface SimulateActionSheet : UIView
@property(assign, nonatomic) id<SimulateActionSheetDelegate> delegate;
@property(strong, nonatomic)UIView* toolBar;
@property(strong, nonatomic)UIPickerView* pickerView;
+(instancetype)styleDefault;
-(void)show:(UIViewController *)controller;
-(void)dismiss:(UIViewController *)controller;
@end
