# Button_FontAwesome
UIButton with FontAwesome

第一步
首先使用pod 导入fontawesome两个框架
cd 进入工程目录
vim Podfile
添加

pod 'FontAwesome', '~> 4.3'

pod 'FontAwesomeIconFactory', '~> 2.1'
保存以后
pod install

第二步
在info.plist中添加属性Fonts provided by application在此属性的array的item0中添加FontAwesome.ttf.这样就可以使用我们的Fontawesome来充当我们的图片了

第三步
在使用的地方导入头文件

import FontAwesomeIconFactory/NIKFontAwesomeIconFactory.h

import FontAwesomeIconFactory/NIKFontAwesomeIconFactory+iOS.h

import NSString+FontAwesome.h

fontawesome不仅可以添加到view上,也可以使用在我们的tabbar和navgationbar上,就看你如何使用了,功能强大,使用得当,肯定比图片的效率高,使我们的app更具性能美观.

此工程中的示例在MainTabbarController中其中你可以自定义tool带个性化的适用于自己的工程中,是不是很好用呢!



此外,添加了关于天气的新iocn,可以给天气app使用



新添加了大量iocn
在pod中添加此iocn即可,具体方法在代码中MasterViewController可查看
pod 'VCMaterialDesignIcons'
