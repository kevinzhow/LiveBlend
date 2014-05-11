//
//  LBViewController.m
//  LiveBlend
//
//  Created by kevinzhow on 14-5-9.
//  Copyright (c) 2014年 Piner. All rights reserved.
//

#import "LBViewController.h"
#import "UIImage+ImageEffects.h"

@interface LBViewController ()

@end

@implementation LBViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.blurImageView.image = [[UIImage imageNamed:@"TBBT"] applyDarkEffect];
    
    self.blendImage = [self.blurImageView.image tintedImageUsingColor:[UIColor whiteColor] withBlendMode:kCGBlendModeOverlay];
    
    self.effectedImageView = [[UIImageView alloc] initWithFrame:CGRectMake(120, 120, 160.0, 50.0)];
    
    self.effectedImageView.userInteractionEnabled = YES;

    
    self.effectedImageView.image = [self.blendImage cropWithRect:self.effectedImageView.frame];
    [self.view addSubview:self.effectedImageView];


    //Add gesture
    UIPanGestureRecognizer * SwipeGestureRecognizer = [[UIPanGestureRecognizer alloc] initWithTarget:self action:@selector(moveRect:)];
    
    [self.effectedImageView addGestureRecognizer:SwipeGestureRecognizer];

	// Do any additional setup after loading the view, typically from a nib.
}

-(void)moveRect:(UIPanGestureRecognizer *)sender
{
    //Mark the view origin
    if ((sender.state == UIGestureRecognizerStateBegan)) {

        
    }else if(sender.state == UIGestureRecognizerStateEnded) {
        
        
        
    }else{
        CGPoint stopLocation = [sender locationInView:self.view];
        
        CGRect newFrame = self.effectedImageView.frame;
        
        newFrame.origin.x = stopLocation.x;
        newFrame.origin.y = stopLocation.y;
        
        self.effectedImageView.center = stopLocation;
        self.effectedImageView.image = [self.blendImage cropWithRect:self.effectedImageView.frame];

    }
    
}



- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
