//
//  MyUtil.h
//  Button_FontAwesome
//
//  Created by 刘青山 on 16/5/19.
//  Copyright © 2016年 刘青山. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
@interface MyUtil : NSObject

+(UIButton *)createBtnFrame:(CGRect)frame title:(NSString *)title backgroundColor:(UIColor *)color titleColor:(UIColor *)titleColor font:(NSString *)fontawesome target:(id)target action:(SEL)action;

@end
