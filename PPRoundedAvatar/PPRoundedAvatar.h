//
//  PPRoundedAvatar.h
//  Demo
//
//  Created by Vernon on 2017/3/23.
//  Copyright © 2017年 Vernon. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PPRoundedAvatar : UIButton

@property (nonatomic, strong) IBInspectable UIImage *avatarImage;

@property (nonatomic, strong) IBInspectable UIColor *imageBackgroundColor;

@property (nonatomic, assign) IBInspectable BOOL borderHidden;

@property (nonatomic, strong) IBInspectable UIColor *borderColor;

@property (nonatomic, assign) IBInspectable NSUInteger borderWidth;

- (instancetype)initWithImage:(UIImage *)image;

@end
