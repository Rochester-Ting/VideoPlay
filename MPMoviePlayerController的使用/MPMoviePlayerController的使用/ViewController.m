//
//  ViewController.m
//  MPMoviePlayerController的使用
//
//  Created by 丁瑞瑞 on 7/10/16.
//  Copyright © 2016年 Rochester. All rights reserved.
//

#import "ViewController.h"
#import <MediaPlayer/MediaPlayer.h>
@interface ViewController ()
/** <#注释#>*/
@property (nonatomic,strong) MPMoviePlayerController *player;
@end

@implementation ViewController
- (MPMoviePlayerController *)player{
    if (!_player) {
        NSURL *url = [NSURL URLWithString:@"http://v1.mukewang.com/19954d8f-e2c2-4c0a-b8c1-a4c826b5ca8b/L.mp4"];
        _player = [[MPMoviePlayerController alloc] initWithContentURL:url];
        _player.view.frame = CGRectMake(0, 0, self.view.bounds.size.width, 200);
        [self.view addSubview:_player.view];
        
        _player.controlStyle = MPMovieControlStyleEmbedded;
    }
    return _player;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self.player play];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
