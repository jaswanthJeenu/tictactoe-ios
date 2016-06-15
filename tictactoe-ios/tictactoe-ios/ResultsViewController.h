//
//  ResultsViewController.h
//  tictactoe-ios
//
//  Created by Jaswanth Jeenu on 25/05/16.
//  Copyright © 2016 Jaswanth Jeenu. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "BaseViewController.h"

@interface ResultsViewController : BaseViewController

@property (weak, nonatomic) IBOutlet UILabel *lblResult;

@property (weak, nonatomic) IBOutlet UIButton *btnRestartWithSamePlayers;
@property (weak, nonatomic) IBOutlet UIButton *btnRestartWithDiffrentPlayers;

- (IBAction)restartWithSamePlayersClicked:(id)sender;
- (IBAction)restartWithDifferentPlayersClicked:(id)sender;


@end
