//
//  PPRoundedAvatar.h
//  Demo
//
//  Created by Vernon on 2017/3/23.
//  Copyright © 2017年 Vernon. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PPRoundedAvatar : UIButton

@property (nonatomic, strong) UIImage *avatarImage;

@property (nonatomic, strong) UIColor *imageBackgroundColor;

@property (nonatomic, assign) BOOL borderHidden;

@property (nonatomic, strong) UIColor *borderColor;

@property (nonatomic, assign) NSUInteger borderWidth;

- (instancetype)initWithImage:(UIImage *)image;

@end
