//
//  GameViewController.m
//  tictactoe-ios
//
//  Created by Jaswanth Jeenu on 25/05/16.
//  Copyright © 2016 Jaswanth Jeenu. All rights reserved.
//

#import "GameViewController.h"

#import "GameViewController.h"

@interface GameViewController ()
@property BOOL isGameFinished;
@property NSTimer *gameTimer;

@end

@implementation GameViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationItem.hidesBackButton = YES;
    
}

-(void)viewWillAppear:(BOOL)animated{
    [self resetBtnClicked:nil];
}


- (IBAction)resetBtnClicked:(id)sender {
    
    [self.btn1 setTitle:@"" forState:UIControlStateNormal];
    [self.btn2 setTitle:@"" forState:UIControlStateNormal];
    [self.btn3 setTitle:@"" forState:UIControlStateNormal];
    [self.btn4 setTitle:@"" forState:UIControlStateNormal];
    [self.btn5 setTitle:@"" forState:UIControlStateNormal];
    [self.btn6 setTitle:@"" forState:UIControlStateNormal];
    [self.btn7 setTitle:@"" forState:UIControlStateNormal];
    [self.btn8 setTitle:@"" forState:UIControlStateNormal];
    [self.btn9 setTitle:@"" forState:UIControlStateNormal];
    
    delegate.isPlayer1Turn = YES;
    
}

- (IBAction)gameButtonClicked:(id)sender {
    UIButton *clickedButton = sender;
    
    if ([clickedButton.currentTitle isEqualToString:@""]){
        if (delegate.isPlayer1Turn){
            [clickedButton setTitle:@"X" forState:UIControlStateNormal];
        }
        else{
            [clickedButton setTitle:@"O" forState:UIControlStateNormal];
        }
        delegate.isPlayer1Turn = !delegate.isPlayer1Turn;
        [self checkIfGameFinished];
    }
}



- (IBAction)backClicked:(id)sender {
    [self.navigationController popViewControllerAnimated:YES];
}


-(void) checkIfGameFinished{
    
    self.isGameFinished = NO;
    
    if (([self.btn1.currentTitle isEqualToString:self.btn2.currentTitle])
        && ([self.btn2.currentTitle isEqualToString:self.btn3.currentTitle])){
        if ([self.btn1.currentTitle isEqualToString:@"X"]){
            self.isGameFinished=YES;
        } else if ([self.btn1.currentTitle isEqualToString:@"O"]){
            self.isGameFinished=YES;
        }
        
    }
    else if (([self.btn4.currentTitle isEqualToString:self.btn5.currentTitle])
             && ([self.btn5.currentTitle isEqualToString:self.btn6.currentTitle])){
        if ([self.btn4.currentTitle isEqualToString:@"X"]){
            self.isGameFinished=YES;
        } else if ([self.btn4.currentTitle isEqualToString:@"O"]){
            self.isGameFinished=YES;
        }
        
    }
    else if (([self.btn7.currentTitle isEqualToString:self.btn8.currentTitle])
             && ([self.btn8.currentTitle isEqualToString:self.btn9.currentTitle])){
        if ([self.btn7.currentTitle isEqualToString:@"X"]){
            
            self.isGameFinished=YES;
            
        }
        else if ([self.btn7.currentTitle isEqualToString:@"O"]){
            
            self.isGameFinished=YES;
            
        }
        
    }
    else if (([self.btn1.currentTitle isEqualToString:self.btn4.currentTitle])
             && ([self.btn4.currentTitle isEqualToString:self.btn7.currentTitle])){
        if ([self.btn1.currentTitle isEqualToString:@"X"]){
            
            self.isGameFinished=YES;
            
        }
        else if ([self.btn1.currentTitle isEqualToString:@"O"]){
            
            self.isGameFinished=YES;
            
        }
        
    }
    else if (([self.btn2.currentTitle isEqualToString:self.btn5.currentTitle])
             && ([self.btn5.currentTitle isEqualToString:self.btn8.currentTitle])){
        if ([self.btn2.currentTitle isEqualToString:@"X"]){
            
            self.isGameFinished=YES;
            
        }
        else if ([self.btn2.currentTitle isEqualToString:@"O"]){
            
            self.isGameFinished=YES;
            
        }
        
    }
    else if (([self.btn3.currentTitle isEqualToString:self.btn6.currentTitle])
             && ([self.btn6.currentTitle isEqualToString:self.btn9.currentTitle])){
        if ([self.btn3.currentTitle isEqualToString:@"X"]){
            
            self.isGameFinished=YES;
            
        }
        else if ([self.btn3.currentTitle isEqualToString:@"O"]){
            
            self.isGameFinished=YES;
            
        }
        
    }
    else if (([self.btn1.currentTitle isEqualToString:self.btn5.currentTitle])
             && ([self.btn5.currentTitle isEqualToString:self.btn9.currentTitle])){
        if ([self.btn1.currentTitle isEqualToString:@"X"]){
            
            self.isGameFinished=YES;
            
        }
        else if ([self.btn1.currentTitle isEqualToString:@"O"]){
            
            self.isGameFinished=YES;
            
        }
        
    }
    else if (([self.btn3.currentTitle isEqualToString:self.btn5.currentTitle])
             && ([self.btn5.currentTitle isEqualToString:self.btn7.currentTitle])){
        if ([self.btn3.currentTitle isEqualToString:@"X"]){
            
            self.isGameFinished=YES;
            
        }
        else if ([self.btn3.currentTitle isEqualToString:@"O"]){
            
            self.isGameFinished=YES;
            
        }
        
    }
    else if ((!([self.btn1.currentTitle isEqualToString:@""]))
             && (!([self.btn2.currentTitle isEqualToString:@""]))
             && (!([self.btn3.currentTitle isEqualToString:@""]))
             && (!([self.btn4.currentTitle isEqualToString:@""]))
             && (!([self.btn5.currentTitle isEqualToString:@""]))
             && (!([self.btn6.currentTitle isEqualToString:@""]))
             && (!([self.btn7.currentTitle isEqualToString:@""]))
             && (!([self.btn8.currentTitle isEqualToString:@""]))
             && (!([self.btn9.currentTitle isEqualToString:@""]))){
        
        self.isGameFinished=YES;
        delegate.isDraw=YES;
    }
    
    
    // write logic to check if game is finished
    if(self.isGameFinished) {
        [self performSegueWithIdentifier:@"showResultsSegue" sender:self];
    }
}
@end
