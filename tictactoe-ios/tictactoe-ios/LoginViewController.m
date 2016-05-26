//
//  LoginViewController.m
//  tictactoe-ios
//
//  Created by Jaswanth Jeenu on 25/05/16.
//  Copyright © 2016 Jaswanth Jeenu. All rights reserved.
//

#import "LoginViewController.h"

@interface LoginViewController ()

@property (strong, nonatomic) NSString *name1;
@property (strong, nonatomic) NSString *name2;

@end

@implementation LoginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.txtPlayer1Name.delegate = self;
    self.txtPlayer2Name.delegate = self;
    
    
}

- (void)viewWillAppear:(BOOL)animated{
    
    NSString *name1 = [NSString stringWithFormat:@""];
    self.txtPlayer1Name.text = [NSString stringWithString:name1];
    
    NSString *name2 = [NSString stringWithFormat:@""];
    self.txtPlayer1Name.text = [NSString stringWithString:name2];
}

-  (void)textFieldDidEndEditing:(UITextField *)textField{
    [self.txtPlayer1Name resignFirstResponder];
    [self.txtPlayer2Name resignFirstResponder];
}

- (IBAction)startPlayingBtnClicked:(id)sender {
    
    if ([self.txtPlayer1Name.text isEqualToString:@""]
        || [self.txtPlayer2Name.text isEqualToString:@""]){
        UIAlertView *alertview = [[UIAlertView alloc]initWithTitle:@"Error" message:@"Please enter names of both the players" delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
        [alertview show];
    }
    else{
        
        delegate.player1Name =  [NSString stringWithString:self.txtPlayer1Name.text];
        delegate.player2Name =  [NSString stringWithString:self.txtPlayer2Name.text];
        
        [self performSegueWithIdentifier:@"showGameSegue" sender:nil];
    }
    
}
@end
