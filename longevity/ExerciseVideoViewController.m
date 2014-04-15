//
//  ExerciseVideoViewController.m
//  longevity
//
//  Created by Robert Werner on 2014-04-10.
//  Copyright (c) 2014 ECUAD. All rights reserved.
//

#import "ExerciseVideoViewController.h"

@implementation ExerciseVideoViewController


- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    //Set Url
    NSURL *movieURL = [[NSBundle mainBundle] URLForResource:@"seatedBicepCurl" withExtension:@"m4v"];
    
    //Set Player
    moviePlayer = [[MPMoviePlayerController alloc] initWithContentURL:movieURL];
    
    //Set Frame
    // [[moviePlayer view] setFrame:[self.videoView bounds]];
    moviePlayer.view.frame = CGRectMake(80, 100, 932, 524);
    
    [self.view addSubview:[moviePlayer view]];
    
    // Controls
    moviePlayer.controlStyle = MPMovieControlStyleDefault;
    
    // Loop Video
    moviePlayer.repeatMode = MPMovieRepeatModeNone;
    
    
    // Play
    [moviePlayer play];
    
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(playbackFinished) name: MPMoviePlayerPlaybackDidFinishNotification object:moviePlayer];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (void)playbackFinished {
    NSLog(@"DONE");
    [self performSegueWithIdentifier:@"videoFinished" sender:self];
}



@end
