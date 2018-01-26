//
//  MainTabberController.m
//  zhsyd_ios
//
//  Created by 刘青山 on 16/4/22.
//  Copyright © 2016年 刘青山. All rights reserved.
//

#import "MainTabbarController.h"
#import "ViewController.h"
#import <FontAwesomeIconFactory/NIKFontAwesomeIconFactory.h>
#import <FontAwesomeIconFactory/NIKFontAwesomeIconFactory+iOS.h>
#import <NSString+FontAwesome.h>
#import "MyUtil.h"
@implementation MainTabbarController
{
    UILabel *_label;
    NSArray *_array;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    NIKFontAwesomeIconFactory *factory = [NIKFontAwesomeIconFactory tabBarItemIconFactory];
    self.view.backgroundColor = [UIColor whiteColor];
    
    UIViewController *notes=[[UIViewController alloc]init];
    [self addChildViewController:notes withTitle:@"首页" image:[factory createImageForIcon:NIKFontAwesomeIconAdjust] selectedImage:nil];
    //NIKFontAwesomeIconAdjust修改即可改变样式
    self.tabBar.tintColor=[UIColor blueColor];
    self.tabBar.backgroundColor=[UIColor whiteColor];
    
    
    
    
    UIButton *btn = [MyUtil createBtnFrame:CGRectMake((self.view.frame.size.width-200)/2, (self.view.frame.size.height-200)/2, 200, 200) title:@"" backgroundColor:[UIColor grayColor] titleColor:[UIColor whiteColor] target:self action:@selector(abcdefg:)];
    [self.view addSubview:btn];
    _label = [[UILabel alloc]initWithFrame:btn.bounds];
    _label.textColor = [UIColor whiteColor];
    _label.font = [UIFont fontWithName:kFontAwesomeFamilyName size:50];
    _label.textAlignment = NSTextAlignmentCenter;
    _label.text = [NSString fontAwesomeIconStringForEnum:FAGithub];
    _label.text = [NSString fontAwesomeIconStringForIconIdentifier:@"fa-usb"];
    [btn addSubview:_label];
    
    _array = @[@"fa-bluetooth",@"fa-bluetooth-b",@"fa-codiepie",@"fa-credit-card-alt",@"fa-fort-awesome",@"fa-percent",@"fa-shopping-bag",@"fa-shopping-basket",@"fa-stop-circle",@"fa-usb"];
    
}
/**
 *  添加子控制器到tabbar,并封装一个navgationbar
 *
 *  @param childController 子控制器对象
 *  @param title           子控制器标题
 *  @param image           tabbaritem正常图片
 *  @param selectedImage   tabbaritem选中图片
 */
-(void)addChildViewController:(UIViewController *)childController withTitle:(NSString *)title image:(UIImage *)image selectedImage:(UIImage *)selectedImage{
    
    childController.tabBarItem=[[UITabBarItem alloc]initWithTitle:title image:image selectedImage:[selectedImage imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal]];
    [childController.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName:[UIColor blueColor]} forState:UIControlStateSelected];
    /**
     给每个控制器添加一个UINavigationController
     */
    UINavigationController *navigationController=[[UINavigationController alloc]initWithRootViewController:childController];
    [self addChildViewController:navigationController];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(void)abcdefg:(UIButton *)btn
{
    int x = arc4random() % 10;
    _label.text = [NSString fontAwesomeIconStringForEnum:FAGithub];
    _label.text = [NSString fontAwesomeIconStringForIconIdentifier:_array[x]];
    
}



@end

