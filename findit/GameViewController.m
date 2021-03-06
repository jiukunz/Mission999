//
//  GameViewController.m
//  findit
//
//  Created by Hongmin Wang on 1/3/15.
//  Copyright (c) 2015 www.whunmr.com. All rights reserved.
//

#import "GameViewController.h"
#import "SelectLevelScene.h"

@implementation GameViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    SKView * skView = (SKView *)self.view;
    
#ifdef DEBUG_VERSION
    skView.showsFPS = YES;
    skView.showsNodeCount = YES;
#endif
    
    skView.ignoresSiblingOrder = YES;
    skView.multipleTouchEnabled = YES;
    
    SelectLevelScene* scene = [[SelectLevelScene alloc] initWithSize:skView.frame.size];
    scene.scaleMode = SKSceneScaleModeAspectFill;
    SKTransition *reveal = [SKTransition doorsOpenVerticalWithDuration:1.0];
    [skView presentScene:scene transition:reveal];
}

- (BOOL)shouldAutorotate {
    return YES;
}

- (UIInterfaceOrientationMask)supportedInterfaceOrientations{
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone) {
        return UIInterfaceOrientationMaskAllButUpsideDown;
    } else {
        return UIInterfaceOrientationMaskAll;
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

- (BOOL)prefersStatusBarHidden {
    return YES;
}

@end
