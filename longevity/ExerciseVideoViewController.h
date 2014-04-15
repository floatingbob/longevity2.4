//
//  ExerciseVideoViewController.h
//  longevity
//
//  Created by Robert Werner on 2014-04-10.
//  Copyright (c) 2014 ECUAD. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MediaPlayer/MPMoviePlayerController.h>


@interface ExerciseVideoViewController : UIViewController {
    
    MPMoviePlayerController *moviePlayer ;
}

@property (weak, nonatomic) IBOutlet UIImageView *videoView;

@end
