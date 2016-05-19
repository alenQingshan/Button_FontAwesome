//
//  WeatherController.m
//  Button_FontAwesome
//
//  Created by 刘青山 on 16/5/19.
//  Copyright © 2016年 刘青山. All rights reserved.
//

#import "WeatherController.h"
#import "FontHeader.h"

#define screen_width self.view.bounds.size.width
#define screen_heigth self.view.bounds.size.height
@interface WeatherController ()<UIPickerViewDataSource,UIPickerViewDelegate>
{
    UILabel *weatherIcon;
}
@end

@implementation WeatherController


- (void)viewDidLoad {
    [super viewDidLoad];

    self.view.backgroundColor = [UIColor whiteColor];
    weatherIcon = [[UILabel alloc]initWithFrame:CGRectMake((screen_width-100)/2, 100, 100, 100)];
    weatherIcon.textAlignment = NSTextAlignmentCenter;
    weatherIcon.textColor = [UIColor blueColor];
    [weatherIcon setFont:[UIFont fontWithName:KFontName size:90]];
    [weatherIcon setText:kWind];
    [self.view addSubview:weatherIcon];
    
    UIPickerView *pick = [[UIPickerView alloc]initWithFrame:CGRectMake(0, 300, screen_width, screen_heigth-200)];
    pick.delegate=self;
    pick.dataSource=self;
    [self.view addSubview:pick];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)sizeChanged:(id)sender {
    CGFloat size = [(UISlider *)sender value];
    NSLog(@"CHANGE SIZE %f ", size);
    [weatherIcon setFont:[UIFont fontWithName:KFontName size:size]];
}

- (IBAction)colorChanged:(id)sender {
    CGFloat value = [(UISlider *)sender value];
    NSLog(@"CHANGE SIZE %@ ", weatherIcon.textColor);
    if (value==0.0) {
        weatherIcon.textColor = [UIColor blackColor];
    }
    else {
        weatherIcon.textColor = [UIColor colorWithHue: value saturation: 0.8 brightness: 0.9 alpha: 1.0];
    }
}

#pragma mark - Picker Delegate

-(NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView
{
    return 1;
}

-(NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component
{
    return [FontList allKeys].count;
}

-(NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component
{
    return [[FontList allKeys][row] capitalizedString];
}

-(void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component
{
    NSString *key = [FontList allKeys][row];
    [weatherIcon setText:FontList[key]];
}
@end
