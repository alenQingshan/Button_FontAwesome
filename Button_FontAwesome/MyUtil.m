//
//  MyUtil.m
//  Button_FontAwesome
//
//  Created by 刘青山 on 16/5/19.
//  Copyright © 2016年 刘青山. All rights reserved.
//

#import "MyUtil.h"
#import <FontAwesomeIconFactory/NIKFontAwesomeIconFactory.h>
#import <FontAwesomeIconFactory/NIKFontAwesomeIconFactory+iOS.h>
#import <NSString+FontAwesome.h>
@implementation MyUtil

+(UIButton *)createBtnFrame:(CGRect)frame title:(NSString *)title backgroundColor:(UIColor *)color titleColor:(UIColor *)titleColor font:(NSString *)fontawesome target:(id)target action:(SEL)action
{
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    btn.contentEdgeInsets = UIEdgeInsetsMake(30, 0, 0, 0);
    btn.frame = frame;
    if (title) {
        [btn setTitle:title forState:UIControlStateNormal];
    }
    if (color) {
        [btn setBackgroundColor:color];
    }
    if (titleColor) {
        [btn setTitleColor:titleColor forState:UIControlStateNormal];
    }
    if (target && action) {
        [btn addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    }
    if (fontawesome) {
        UILabel *label = [[UILabel alloc]initWithFrame:CGRectMake(0, 0, frame.size.width, frame.size.height-20)];
        label.font = [UIFont fontWithName:kFontAwesomeFamilyName size:24];
        label.textAlignment = NSTextAlignmentCenter;
        label.text = [NSString fontAwesomeIconStringForEnum:FAGithub];
        label.text = [NSString fontAwesomeIconStringForIconIdentifier:fontawesome];
        [btn addSubview:label];
    }
    btn.titleLabel.font=[UIFont systemFontOfSize:14];
    return btn;
}

@end
