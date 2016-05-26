//
//  LoginViewController.h
//  tictactoe-ios
//
//  Created by Jaswanth Jeenu on 25/05/16.
//  Copyright © 2016 Jaswanth Jeenu. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "BaseViewController.h"

@interface LoginViewController : BaseViewController<UITextFieldDelegate>

@property (weak, nonatomic) IBOutlet UILabel *lblPlayer1Name;
@property (weak, nonatomic) IBOutlet UILabel *lblPlayer2Name;

@property (weak, nonatomic) IBOutlet UITextField *txtPlayer1Name;
@property (weak, nonatomic) IBOutlet UITextField *txtPlayer2Name;

@property (weak, nonatomic) IBOutlet UIButton *btnStartPlaying;

- (IBAction)startPlayingBtnClicked:(id)sender;

@end
