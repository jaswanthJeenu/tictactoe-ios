//
//  GameViewController.m
//  tictactoe-ios
//
//  Created by Jaswanth Jeenu on 25/05/16.
//  Copyright © 2016 Jaswanth Jeenu. All rights reserved.
//

#import "GameViewController.h"

@interface GameViewController ()

@end

@implementation GameViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.navigationItem.hidesBackButton = YES;
}

- (void)viewWillAppear:(BOOL)animated{
    
    [self resetBtnClicked:nil];
    
}




- (IBAction)gameButtonClicked:(id)sender {
    
    UIButton *clickedButton = (UIButton *) sender;
    NSLog(@"is player1 turn : %@", (delegate.isPlayer1Turn) ? @"yes" : @"no");
    if (clickedButton.tag == 1){
        if ((delegate.isPlayer1Turn == YES)
            && ([self.btn1.currentTitle isEqualToString:@""])){
            [self.btn1 setTitle:@"X" forState:UIControlStateNormal];
            [self.game addObject:[NSNumber numberWithInteger:1]];
            delegate.isPlayer1Turn = !delegate.isPlayer1Turn;
        }
        else if ((delegate.isPlayer1Turn == NO)
                 && ([self.btn1.currentTitle isEqualToString:@""])){
            [self.btn1 setTitle:@"O" forState:UIControlStateNormal];
            [self.game addObject:[NSNumber numberWithInteger:2]];
            delegate.isPlayer1Turn = !delegate.isPlayer1Turn;
        }
    }
    
    if (clickedButton.tag == 2){
        if ((delegate.isPlayer1Turn == YES)
            && ([self.btn2.currentTitle isEqualToString:@""])){
            [self.btn2 setTitle:@"X" forState:UIControlStateNormal];
            [self.game addObject:[NSNumber numberWithInteger:1]];
            delegate.isPlayer1Turn = !delegate.isPlayer1Turn;
        }
        else if ((delegate.isPlayer1Turn == NO)
                 && ([self.btn2.currentTitle isEqualToString:@""])){
            [self.btn2 setTitle:@"O" forState:UIControlStateNormal];
            [self.game addObject:[NSNumber numberWithInteger:2]];
            delegate.isPlayer1Turn = !delegate.isPlayer1Turn;
        }
    }
    
    if (clickedButton.tag == 3){
        if ((delegate.isPlayer1Turn == YES)
            && ([self.btn3.currentTitle isEqualToString:@""])){
            [self.btn3 setTitle:@"X" forState:UIControlStateNormal];
            [self.game addObject:[NSNumber numberWithInteger:1]];
            delegate.isPlayer1Turn = !delegate.isPlayer1Turn;
        }
        else if ((delegate.isPlayer1Turn == NO)
                 && ([self.btn3.currentTitle isEqualToString:@""])){
            [self.btn3 setTitle:@"O" forState:UIControlStateNormal];
            [self.game addObject:[NSNumber numberWithInteger:2]];
            delegate.isPlayer1Turn = !delegate.isPlayer1Turn;
        }
    }
    
    if (clickedButton.tag == 4){
        if ((delegate.isPlayer1Turn == YES)
            && ([self.btn4.currentTitle isEqualToString:@""])){
            [self.btn4 setTitle:@"X" forState:UIControlStateNormal];
            [self.game addObject:[NSNumber numberWithInteger:1]];
            delegate.isPlayer1Turn = !delegate.isPlayer1Turn;
        }
        else if ((delegate.isPlayer1Turn == NO)
                 && ([self.btn4.currentTitle isEqualToString:@""])){
            [self.btn4 setTitle:@"O" forState:UIControlStateNormal];
            [self.game addObject:[NSNumber numberWithInteger:2]];
            delegate.isPlayer1Turn = !delegate.isPlayer1Turn;
        }
    }
    
    if (clickedButton.tag == 5){
        if ((delegate.isPlayer1Turn == YES)
            && ([self.btn5.currentTitle isEqualToString:@""])){
            [self.btn5 setTitle:@"X" forState:UIControlStateNormal];
            [self.game addObject:[NSNumber numberWithInteger:1]];
            delegate.isPlayer1Turn = !delegate.isPlayer1Turn;
        }
        else if ((delegate.isPlayer1Turn == NO)
                 && ([self.btn5.currentTitle isEqualToString:@""])){
            [self.btn5 setTitle:@"O" forState:UIControlStateNormal];
            [self.game addObject:[NSNumber numberWithInteger:2]];
            delegate.isPlayer1Turn = !delegate.isPlayer1Turn;
        }
    }

    if (clickedButton.tag == 6){
        if ((delegate.isPlayer1Turn == YES)
            && ([self.btn6.currentTitle isEqualToString:@""])){
            [self.btn6 setTitle:@"X" forState:UIControlStateNormal];
            [self.game addObject:[NSNumber numberWithInteger:1]];
            delegate.isPlayer1Turn = !delegate.isPlayer1Turn;
        }
        else if ((delegate.isPlayer1Turn == NO)
                 && ([self.btn6.currentTitle isEqualToString:@""])){
            [self.btn6 setTitle:@"O" forState:UIControlStateNormal];
            [self.game addObject:[NSNumber numberWithInteger:2]];
            delegate.isPlayer1Turn = !delegate.isPlayer1Turn;
        }
    }
    
    if (clickedButton.tag == 7){
        if ((delegate.isPlayer1Turn == YES)
            && ([self.btn7.currentTitle isEqualToString:@""])){
            [self.btn7 setTitle:@"X" forState:UIControlStateNormal];
            [self.game addObject:[NSNumber numberWithInteger:1]];
            delegate.isPlayer1Turn = !delegate.isPlayer1Turn;
        }
        else if ((delegate.isPlayer1Turn == NO)
                 && ([self.btn7.currentTitle isEqualToString:@""])){
            [self.btn7 setTitle:@"O" forState:UIControlStateNormal];
            [self.game addObject:[NSNumber numberWithInteger:2]];
            delegate.isPlayer1Turn = !delegate.isPlayer1Turn;
        }
    }
    
    if (clickedButton.tag == 8){
        if ((delegate.isPlayer1Turn == YES)
            && ([self.btn8.currentTitle isEqualToString:@""])){
            [self.btn8 setTitle:@"X" forState:UIControlStateNormal];
            [self.game addObject:[NSNumber numberWithInteger:1]];
            delegate.isPlayer1Turn = !delegate.isPlayer1Turn;
        }
        else if ((delegate.isPlayer1Turn == NO)
                 && ([self.btn8.currentTitle isEqualToString:@""])){
            [self.btn8 setTitle:@"O" forState:UIControlStateNormal];
            [self.game addObject:[NSNumber numberWithInteger:2]];
            delegate.isPlayer1Turn = !delegate.isPlayer1Turn;
        }
    }
    
    if (clickedButton.tag == 9){
        if ((delegate.isPlayer1Turn == YES)
            && ([self.btn9.currentTitle isEqualToString:@""])){
            [self.btn9 setTitle:@"X" forState:UIControlStateNormal];
            [self.game addObject:[NSNumber numberWithInteger:1]];
            delegate.isPlayer1Turn = !delegate.isPlayer1Turn;
        }
        else if ((delegate.isPlayer1Turn == NO)
                 && ([self.btn9.currentTitle isEqualToString:@""])){
            [self.btn9 setTitle:@"O" forState:UIControlStateNormal];
            [self.game addObject:[NSNumber numberWithInteger:2]];
            delegate.isPlayer1Turn = !delegate.isPlayer1Turn;
        }
    }
    NSLog(@" and is player1 turn : %@", (delegate.isPlayer1Turn) ? @"yes" : @"no");


}

- (IBAction)resetBtnClicked:(id)sender {
    
    delegate.isPlayer1Turn = YES;
    
    [self.btn1 setTitle:@"" forState:UIControlStateNormal];
    [self.btn2 setTitle:@"" forState:UIControlStateNormal];
    [self.btn3 setTitle:@"" forState:UIControlStateNormal];
    [self.btn4 setTitle:@"" forState:UIControlStateNormal];
    [self.btn5 setTitle:@"" forState:UIControlStateNormal];
    [self.btn6 setTitle:@"" forState:UIControlStateNormal];
    [self.btn7 setTitle:@"" forState:UIControlStateNormal];
    [self.btn8 setTitle:@"" forState:UIControlStateNormal];
    [self.btn9 setTitle:@"" forState:UIControlStateNormal];
    
    int i;
    for (i = 1;i < 10;i++){
        [self.game addObject:[NSNumber numberWithInteger:0]];
    }
    
}
@end
