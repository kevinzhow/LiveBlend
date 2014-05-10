//
//  LBViewController.h
//  LiveBlend
//
//  Created by kevinzhow on 14-5-9.
//  Copyright (c) 2014年 Piner. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LBViewController : UIViewController<UIGestureRecognizerDelegate>
@property (weak, nonatomic) IBOutlet UIImageView *blurImageView;
@property (nonatomic) UIImage * blendImage;
@property (nonatomic) UIImageView * effectedImageView;

@property (nonatomic) CGPoint startLocation;
@end
