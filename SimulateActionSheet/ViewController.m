//
//  ViewController.m
//  SimulateActionSheet
//
//  Created by 张 聪 on 15/1/14.
//  Copyright (c) 2015年 张 聪. All rights reserved.
//

#import "ViewController.h"
#import "SimulateActionSheet.h"
@interface ViewController ()<SimulateActionSheetDelegate,UIPickerViewDataSource>{
    SimulateActionSheet *sheet;
    NSArray* arrays;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    arrays = [NSArray arrayWithObjects:@"letv",@"kankan",@"tencent",@"sohu",@"pptc", nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)action:(id)sender {
    sheet = [SimulateActionSheet styleDefault];
    sheet.delegate = self;
    sheet.pickerView.delegate=self;
    [sheet show:self];
}

-(void)actionCancle{
    [sheet dismiss:self];
}
-(void)actionDone{
    [sheet dismiss:self];
}
-(NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView
{
    NSLog(@"numberofComponents");
    return 1;
}

-(NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component
{
    NSLog(@"component:%d",component);
    
    return arrays.count;
}

-(NSString*)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component
{
    NSLog(@"row:%d",row);
    return [arrays objectAtIndex:row];
}

@end
