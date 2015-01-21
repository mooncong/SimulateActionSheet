//
//  SimulateActionSheet.h
//  SimulateActionSheet
//
//  Created by 张 聪 on 15/1/14.
//  Copyright (c) 2015年 张 聪. All rights reserved.
//
#import <UIKit/UIKit.h>

@protocol SimulateActionSheetDelegate <UIPickerViewDelegate>
//点击取消的回调接口
-(void)actionCancle;
//点击确定的回调接口
-(void)actionDone;
@end

@interface SimulateActionSheet : UIView
@property(assign, nonatomic) id<SimulateActionSheetDelegate> delegate;
@property(strong, nonatomic)UIView* toolBar;
@property(strong, nonatomic)UIPickerView* pickerView;

+(instancetype)styleDefault;
-(void)show:(UIViewController *)controller;
-(void)dismiss:(UIViewController *)controller;
//选中指定的行列
-(void)selectRow:(NSInteger)row inComponent:(NSInteger)component animated:(BOOL)anime;
//获取被选中的行列
-(NSInteger)selectedRowInComponent:(NSInteger)component;
@end
