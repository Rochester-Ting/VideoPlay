//
//  ViewController.m
//  AVPlayerViewController的使用
//
//  Created by 丁瑞瑞 on 7/10/16.
//  Copyright © 2016年 Rochester. All rights reserved.
//

#import "ViewController.h"
#import <AVKit/AVKit.h>
#import <AVFoundation/AVFoundation.h>
@interface ViewController ()
/** <#注释#>*/
@property (nonatomic,strong) AVPlayerViewController *player;
@end

@implementation ViewController
- (AVPlayerViewController *)player{
    if (!_player) {
        NSURL *url = [NSURL URLWithString:@"http://v1.mukewang.com/19954d8f-e2c2-4c0a-b8c1-a4c826b5ca8b/L.mp4"];
        AVPlayer *play = [AVPlayer playerWithURL:url];
        _player = [[AVPlayerViewController alloc] init];
        _player.player = play;
        _player.view.frame = CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, 200);
        [self.view addSubview:_player.view];
    }
    return _player;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self.player.player play];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
