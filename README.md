<div style="text-align:center" markdown="1">
<img src="https://github.com/VernonVan/PPRoundedAvatar/raw/master/images/banner.png" width = 1000 alt="PPRoundedAvatar"/>
</div>

<font size = 4>PPRoundedAvatar——支持**异步裁剪**的圆角头像控件。  </font>
<div align=center> 
<img src="https://github.com/VernonVan/PPRoundedAvatar/raw/master/images/show.jpeg"  width=280  alt="效果演示"/>
</div>

## 主要功能
- [x] 圆角
- [x] 异步裁剪
- [ ] 技术文章

## 使用

```objective-c
PPRoundedAvatar *avatar = [[PPRoundedAvatar alloc] initWithFrame:CGRectMake(0, 0, 100, 100)];
avatar.avatarImage = [UIImage imageNamed:@"example.png"];       // 头像图片
avatar.borderWidth = 1.0;                                       // 边框宽度
avatar.borderColor = UIColor.blackColor;                        // 边框颜色
avatar.borderHidden = NO;                                       // 显示边框
avatar.imageBackgroundColor = UIColor.grayColor;                // 背景颜色
[self.view addSubview:avatar];
```

## 安装
#### Cocoapods
1. 在podfile中添加 ```pod PPRoundedAvatar```
2. 执行 ```pod install``` 或者 	```pod update```
3. 导入头文件 ```#import "PPRoundedAvatar.h"```  

#### 手动安装

1. 下载 PPRoundedAvatar 文件夹内的所有内容

2. 将目录下的 PPRoundedAvatar 目录添加（拖放）到你的工程中

3. 导入头文件 ```#import "PPRoundedAvatar.h"``` 

## 相关文章
待定

## 致谢
最后，感谢我的首席私人高级设计师--@又吉君🍻🍻🍻将这个开源控件从工科男的审美中挽救了回来。未来请你多多指教~
<p align="right">from: 你的ruanpapa</p>

   ​

   ​

   ​

   ​