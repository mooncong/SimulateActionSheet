//
//  ViewController.m
//  SimulateActionSheet
//
//  Created by 张 聪 on 15/1/14.
//  Copyright (c) 2015年 张 聪. All rights reserved.
//

#import "ViewController.h"
#import "SimulateActionSheet.h"
@interface ViewController ()<SimulateActionSheetDelegate, UIPickerViewDataSource>{
    SimulateActionSheet *sheet;
    NSArray* arrays;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    arrays = [NSArray arrayWithObjects:@"letv",@"kankan",@"tencent",@"sohu",@"pptv", nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)action:(id)sender {
    sheet = [SimulateActionSheet styleDefault];
    sheet.delegate = self;
    //必须在设置delegate之后调用，否则无法选中指定的行
    [sheet selectRow:arrays.count/2 inComponent:0 animated:YES];
    [sheet show:self];
}

-(void)actionCancle{
    [sheet dismiss:self];
}

-(void)actionDone{
    [sheet dismiss:self];
    
    NSUInteger index = [sheet selectedRowInComponent:0];
    
    NSLog(@"done with index of %d",index);
}

-(NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView
{
    return 1;
}

-(NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component
{
    return arrays.count;
}

-(NSString*)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component
{
    return [arrays objectAtIndex:row];
}

@end
