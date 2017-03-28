
//
//  PPRoundedAvatar.m
//  Demo
//
//  Created by Vernon on 2017/3/23.
//  Copyright © 2017年 Vernon. All rights reserved.
//

#import "PPRoundedAvatar.h"
#import "UIImage+PPRoundedAvatar.h"

@implementation PPRoundedAvatar {
    BOOL _isNeedTransform;
}

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.opaque = NO;
        _borderColor = [UIColor blackColor];
        _borderWidth = 1.0;
    }
    return self;
}

- (instancetype)initWithImage:(UIImage *)image
{
    CGRect frame = CGRectZero;
    frame.size = image.size;
    self = [self initWithFrame:frame];
    if (self) {
        self.avatarImage = image;
    }
    return self;
}

- (void)setAvatarImage:(UIImage *)avatarImage
{
    if (_avatarImage != avatarImage) {
        _avatarImage = avatarImage;
        
        _isNeedTransform = YES;
        [self setNeedsLayout];
    }
}

- (void)setBorderHidden:(BOOL)borderHidden
{
    if (_borderHidden != borderHidden) {
        _borderHidden = borderHidden;
        
        _isNeedTransform = YES;
        [self setNeedsLayout];
    }
}

- (void)setImageBackgroundColor:(UIColor *)imageBackgroundColor
{
    if (_imageBackgroundColor != imageBackgroundColor) {
        _imageBackgroundColor = imageBackgroundColor;
        
        _isNeedTransform = YES;
        [self setNeedsLayout];
    }
}

- (void)setBorderColor:(UIColor *)borderColor
{
    if (_borderColor != borderColor) {
        _borderColor = borderColor;
        
        _isNeedTransform = YES;
        [self setNeedsLayout];
    }
}

- (void)setBorderWidth:(NSUInteger)borderWidth
{
    if (_borderWidth != borderWidth) {
        _borderWidth = borderWidth;
        
        _isNeedTransform = YES;
        [self setNeedsLayout];
    }
}

+ (NSOperationQueue *)sharedTransformQueue
{
    static NSOperationQueue *transformQueue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        transformQueue = [[NSOperationQueue alloc] init];
        transformQueue.name = @"io.github.vernonvan.PPRoundedAvatar.sharedOperationQueue";
        transformQueue.maxConcurrentOperationCount = 20;
    });
    return transformQueue;
}

- (void)layoutSubviews
{
    [super layoutSubviews];
    
    if (!self.avatarImage && !self.imageBackgroundColor) {
        return;
    }
    
    if (self.bounds.size.width <= 0 || self.bounds.size.height <= 0) {
        return;
    }

    if (_isNeedTransform || !CGSizeEqualToSize(self.bounds.size, self.imageView.image.size)) {
        [self transformImage];
    }
}

- (void)transformImage
{
    UIImage *startImage = self.avatarImage;
    
    NSBlockOperation *transformOperation = [[NSBlockOperation alloc] init];
    __weak NSBlockOperation *weakTransformOperation = transformOperation;
    [transformOperation addExecutionBlock:^{
        NSBlockOperation *strongTransformOperation = weakTransformOperation;
        
        if ([strongTransformOperation isCancelled]) {
            return;
        }
        
        UIImage *transformedImage = nil;
        if (self.avatarImage) {
            transformedImage = [self.avatarImage pp_imageByRoundCornerRadius:self.bounds.size.width scaleSize:self.bounds.size];
        } else if (self.imageBackgroundColor) {
            transformedImage = [UIImage pp_roundImageWithColor:self.imageBackgroundColor radius:self.bounds.size.width / 2];
        }
        
        if (!self.borderHidden) {
            transformedImage = [transformedImage pp_imageByRoundBorderedColor:self.borderColor borderWidth:self.borderWidth];
        }
        
        dispatch_async(dispatch_get_main_queue(), ^{
            if ([strongTransformOperation isCancelled]) {
                return;
            }
            if (self.avatarImage == startImage) {
                _isNeedTransform = NO;
                [self setImage:transformedImage forState:UIControlStateNormal];
            }
        });
    }];
    
    [[self.class sharedTransformQueue] addOperation:transformOperation];
}

@end

