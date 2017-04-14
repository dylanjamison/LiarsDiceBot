//
//  ViewController.m
//  LiarsDiceBot
//
//  Created by Dylan Jamison on 3/1/17.
//  Copyright © 2017 Dylan Jamison. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (strong, nonatomic) IBOutlet UIImageView *d1_0;
@property (strong, nonatomic) IBOutlet UIImageView *d1_1;
@property (strong, nonatomic) IBOutlet UIImageView *d1_2;
@property (strong, nonatomic) IBOutlet UIImageView *d1_3;
@property (strong, nonatomic) IBOutlet UIImageView *d1_4;
@property (strong, nonatomic) IBOutlet UIImageView *d1_5;
@property (strong, nonatomic) IBOutlet UIImageView *d1_6;

@property (strong, nonatomic) IBOutlet UIImageView *d2_0;
@property (strong, nonatomic) IBOutlet UIImageView *d2_1;
@property (strong, nonatomic) IBOutlet UIImageView *d2_2;
@property (strong, nonatomic) IBOutlet UIImageView *d2_3;
@property (strong, nonatomic) IBOutlet UIImageView *d2_4;
@property (strong, nonatomic) IBOutlet UIImageView *d2_5;
@property (strong, nonatomic) IBOutlet UIImageView *d2_6;

@property (strong, nonatomic) IBOutlet UIImageView *d3_0;
@property (strong, nonatomic) IBOutlet UIImageView *d3_1;
@property (strong, nonatomic) IBOutlet UIImageView *d3_2;
@property (strong, nonatomic) IBOutlet UIImageView *d3_3;
@property (strong, nonatomic) IBOutlet UIImageView *d3_4;
@property (strong, nonatomic) IBOutlet UIImageView *d3_5;
@property (strong, nonatomic) IBOutlet UIImageView *d3_6;

@property (strong, nonatomic) IBOutlet UIImageView *d4_0;
@property (strong, nonatomic) IBOutlet UIImageView *d4_1;
@property (strong, nonatomic) IBOutlet UIImageView *d4_2;
@property (strong, nonatomic) IBOutlet UIImageView *d4_3;
@property (strong, nonatomic) IBOutlet UIImageView *d4_4;
@property (strong, nonatomic) IBOutlet UIImageView *d4_5;
@property (strong, nonatomic) IBOutlet UIImageView *d4_6;

@property (strong, nonatomic) IBOutlet UIImageView *d5_0;
@property (strong, nonatomic) IBOutlet UIImageView *d5_1;
@property (strong, nonatomic) IBOutlet UIImageView *d5_2;
@property (strong, nonatomic) IBOutlet UIImageView *d5_3;
@property (strong, nonatomic) IBOutlet UIImageView *d5_4;
@property (strong, nonatomic) IBOutlet UIImageView *d5_5;
@property (strong, nonatomic) IBOutlet UIImageView *d5_6;

@property (strong, nonatomic) IBOutlet UIImageView *c1;
@property (strong, nonatomic) IBOutlet UIImageView *c2;
@property (strong, nonatomic) IBOutlet UIImageView *c3;
@property (strong, nonatomic) IBOutlet UIImageView *c4;
@property (strong, nonatomic) IBOutlet UIImageView *c5;
@property (strong, nonatomic) IBOutlet UIImageView *c6;

@property (strong, nonatomic) IBOutlet UILabel *callLabel;

@property (strong, nonatomic) IBOutlet UILabel *totalDiceLabel;

@property (strong, nonatomic) IBOutlet UIImageView *calculateImage;

@property (strong, nonatomic) IBOutlet UILabel *resultLabel;

@end

@implementation ViewController

int callCountInt = 1;
int callDiceInt = 1;
int totalDiceInt = 25;
int firstDice = 0;
int secondDice = 0;
int thirdDice = 0;
int fourthDice = 0;
int fifthDice = 0;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    if(firstDice + secondDice + thirdDice + fourthDice + fifthDice == 0){
        _calculateImage.userInteractionEnabled = false;
        _calculateImage.image = [UIImage imageNamed:(@"Calculate_W.png")];
    }
    else{
        _calculateImage.userInteractionEnabled = true;
        _calculateImage.image = [UIImage imageNamed:(@"Calculate_B.png")];
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)firstDiceTapped:(id)sender {
    CGPoint tapPoint = [sender locationInView:self.view];
    _d1_0.image = [UIImage imageNamed:(@"0_W.png")];
    _d1_1.image = [UIImage imageNamed:(@"1_W.png")];
    _d1_2.image = [UIImage imageNamed:(@"2_W.png")];
    _d1_3.image = [UIImage imageNamed:(@"3_W.png")];
    _d1_4.image = [UIImage imageNamed:(@"4_W.png")];
    _d1_5.image = [UIImage imageNamed:(@"5_W.png")];
    _d1_6.image = [UIImage imageNamed:(@"6_W.png")];
    
    if((((int)_d1_0.center.x + 25 >= (int)tapPoint.x) && ((int)_d1_0.center.x - 25 <= (int)tapPoint.x)) &&
       (((int)_d1_0.center.y + 25 >= (int)tapPoint.y) && ((int)_d1_0.center.y - 25 <= (int)tapPoint.y))){
        _d1_0.image = [UIImage imageNamed:(@"0_B.png")];
        firstDice = 0;
    }
    if((((int)_d1_1.center.x + 25 >= (int)tapPoint.x) && ((int)_d1_1.center.x - 25 < (int)tapPoint.x)) &&
       (((int)_d1_1.center.y + 25 >= (int)tapPoint.y) && ((int)_d1_1.center.y - 25 <= (int)tapPoint.y))){
        _d1_1.image = [UIImage imageNamed:(@"1_B.png")];
        firstDice = 1;
    }
    if((((int)_d1_2.center.x + 25 >= (int)tapPoint.x) && ((int)_d1_2.center.x - 25 < (int)tapPoint.x)) &&
       (((int)_d1_2.center.y + 25 >= (int)tapPoint.y) && ((int)_d1_2.center.y - 25 <= (int)tapPoint.y))){
        _d1_2.image = [UIImage imageNamed:(@"2_B.png")];
        firstDice = 2;
    }
    if((((int)_d1_3.center.x + 25 >= (int)tapPoint.x) && ((int)_d1_3.center.x - 25 < (int)tapPoint.x)) &&
       (((int)_d1_3.center.y + 25 >= (int)tapPoint.y) && ((int)_d1_3.center.y - 25 <= (int)tapPoint.y))){
        _d1_3.image = [UIImage imageNamed:(@"3_B.png")];
        firstDice = 3;
    }
    if((((int)_d1_4.center.x + 25 >= (int)tapPoint.x) && ((int)_d1_4.center.x - 25 < (int)tapPoint.x)) &&
       (((int)_d1_4.center.y + 25 >= (int)tapPoint.y) && ((int)_d1_4.center.y - 25 <= (int)tapPoint.y))){
        _d1_4.image = [UIImage imageNamed:(@"4_B.png")];
        firstDice = 4;
    }
    if((((int)_d1_5.center.x + 25 >= (int)tapPoint.x) && ((int)_d1_5.center.x - 25 < (int)tapPoint.x)) &&
       (((int)_d1_5.center.y + 25 >= (int)tapPoint.y) && ((int)_d1_5.center.y - 25 <= (int)tapPoint.y))){
        _d1_5.image = [UIImage imageNamed:(@"5_B.png")];
        firstDice = 5;
    }
    if((((int)_d1_6.center.x + 25 >= (int)tapPoint.x) && ((int)_d1_6.center.x - 25 < (int)tapPoint.x)) &&
       (((int)_d1_6.center.y + 25 >= (int)tapPoint.y) && ((int)_d1_6.center.y - 25 <= (int)tapPoint.y))){
        _d1_6.image = [UIImage imageNamed:(@"6_B.png")];
        firstDice = 6;
    }
    
    if(firstDice + secondDice + thirdDice + fourthDice + fifthDice == 0){
        _calculateImage.userInteractionEnabled = false;
        _calculateImage.image = [UIImage imageNamed:(@"Calculate_W.png")];
    }
    else{
        _calculateImage.userInteractionEnabled = true;
        _calculateImage.image = [UIImage imageNamed:(@"Calculate_B.png")];
    }
}

- (IBAction)secondDiceTapped:(id)sender {
    CGPoint tapPoint = [sender locationInView:self.view];
    _d2_0.image = [UIImage imageNamed:(@"0_W.png")];
    _d2_1.image = [UIImage imageNamed:(@"1_W.png")];
    _d2_2.image = [UIImage imageNamed:(@"2_W.png")];
    _d2_3.image = [UIImage imageNamed:(@"3_W.png")];
    _d2_4.image = [UIImage imageNamed:(@"4_W.png")];
    _d2_5.image = [UIImage imageNamed:(@"5_W.png")];
    _d2_6.image = [UIImage imageNamed:(@"6_W.png")];
    
    if((((int)_d2_0.center.x + 25 >= (int)tapPoint.x) && ((int)_d2_0.center.x - 25 <= (int)tapPoint.x)) &&
       (((int)_d2_0.center.y + 25 >= (int)tapPoint.y) && ((int)_d2_0.center.y - 25 <= (int)tapPoint.y))){
        _d2_0.image = [UIImage imageNamed:(@"0_B.png")];
        secondDice = 0;
    }
    if((((int)_d2_1.center.x + 25 >= (int)tapPoint.x) && ((int)_d2_1.center.x - 25 < (int)tapPoint.x)) &&
       (((int)_d2_1.center.y + 25 >= (int)tapPoint.y) && ((int)_d2_1.center.y - 25 <= (int)tapPoint.y))){
        _d2_1.image = [UIImage imageNamed:(@"1_B.png")];
        secondDice = 1;
    }
    if((((int)_d2_2.center.x + 25 >= (int)tapPoint.x) && ((int)_d2_2.center.x - 25 < (int)tapPoint.x)) &&
       (((int)_d2_2.center.y + 25 >= (int)tapPoint.y) && ((int)_d2_2.center.y - 25 <= (int)tapPoint.y))){
        _d2_2.image = [UIImage imageNamed:(@"2_B.png")];
        secondDice = 2;
    }
    if((((int)_d2_3.center.x + 25 >= (int)tapPoint.x) && ((int)_d2_3.center.x - 25 < (int)tapPoint.x)) &&
       (((int)_d2_3.center.y + 25 >= (int)tapPoint.y) && ((int)_d2_3.center.y - 25 <= (int)tapPoint.y))){
        _d2_3.image = [UIImage imageNamed:(@"3_B.png")];
        secondDice = 3;
    }
    if((((int)_d2_4.center.x + 25 >= (int)tapPoint.x) && ((int)_d2_4.center.x - 25 < (int)tapPoint.x)) &&
       (((int)_d2_4.center.y + 25 >= (int)tapPoint.y) && ((int)_d2_4.center.y - 25 <= (int)tapPoint.y))){
        _d2_4.image = [UIImage imageNamed:(@"4_B.png")];
        secondDice = 4;
    }
    if((((int)_d2_5.center.x + 25 >= (int)tapPoint.x) && ((int)_d2_5.center.x - 25 < (int)tapPoint.x)) &&
       (((int)_d2_5.center.y + 25 >= (int)tapPoint.y) && ((int)_d2_5.center.y - 25 <= (int)tapPoint.y))){
        _d2_5.image = [UIImage imageNamed:(@"5_B.png")];
        secondDice = 5;
    }
    if((((int)_d2_6.center.x + 25 >= (int)tapPoint.x) && ((int)_d2_6.center.x - 25 < (int)tapPoint.x)) &&
       (((int)_d2_6.center.y + 25 >= (int)tapPoint.y) && ((int)_d2_6.center.y - 25 <= (int)tapPoint.y))){
        _d2_6.image = [UIImage imageNamed:(@"6_B.png")];
        secondDice = 6;
    }
    if(firstDice + secondDice + thirdDice + fourthDice + fifthDice == 0){
        _calculateImage.userInteractionEnabled = false;
        _calculateImage.image = [UIImage imageNamed:(@"Calculate_W.png")];
    }
    else{
        _calculateImage.userInteractionEnabled = true;
        _calculateImage.image = [UIImage imageNamed:(@"Calculate_B.png")];
    }
}

- (IBAction)thirdDiceTapped:(id)sender {
    CGPoint tapPoint = [sender locationInView:self.view];
    _d3_0.image = [UIImage imageNamed:(@"0_W.png")];
    _d3_1.image = [UIImage imageNamed:(@"1_W.png")];
    _d3_2.image = [UIImage imageNamed:(@"2_W.png")];
    _d3_3.image = [UIImage imageNamed:(@"3_W.png")];
    _d3_4.image = [UIImage imageNamed:(@"4_W.png")];
    _d3_5.image = [UIImage imageNamed:(@"5_W.png")];
    _d3_6.image = [UIImage imageNamed:(@"6_W.png")];
    
    if((((int)_d3_0.center.x + 25 >= (int)tapPoint.x) && ((int)_d3_0.center.x - 25 <= (int)tapPoint.x)) &&
       (((int)_d3_0.center.y + 25 >= (int)tapPoint.y) && ((int)_d3_0.center.y - 25 <= (int)tapPoint.y))){
        _d3_0.image = [UIImage imageNamed:(@"0_B.png")];
        thirdDice = 0;
    }
    if((((int)_d3_1.center.x + 25 >= (int)tapPoint.x) && ((int)_d3_1.center.x - 25 < (int)tapPoint.x)) &&
       (((int)_d3_1.center.y + 25 >= (int)tapPoint.y) && ((int)_d3_1.center.y - 25 <= (int)tapPoint.y))){
        _d3_1.image = [UIImage imageNamed:(@"1_B.png")];
        thirdDice = 1;
    }
    if((((int)_d3_2.center.x + 25 >= (int)tapPoint.x) && ((int)_d3_2.center.x - 25 < (int)tapPoint.x)) &&
       (((int)_d3_2.center.y + 25 >= (int)tapPoint.y) && ((int)_d3_2.center.y - 25 <= (int)tapPoint.y))){
        _d3_2.image = [UIImage imageNamed:(@"2_B.png")];
        thirdDice = 2;
    }
    if((((int)_d3_3.center.x + 25 >= (int)tapPoint.x) && ((int)_d3_3.center.x - 25 < (int)tapPoint.x)) &&
       (((int)_d3_3.center.y + 25 >= (int)tapPoint.y) && ((int)_d3_3.center.y - 25 <= (int)tapPoint.y))){
        _d3_3.image = [UIImage imageNamed:(@"3_B.png")];
        thirdDice = 3;
    }
    if((((int)_d3_4.center.x + 25 >= (int)tapPoint.x) && ((int)_d3_4.center.x - 25 < (int)tapPoint.x)) &&
       (((int)_d3_4.center.y + 25 >= (int)tapPoint.y) && ((int)_d3_4.center.y - 25 <= (int)tapPoint.y))){
        _d3_4.image = [UIImage imageNamed:(@"4_B.png")];
        thirdDice = 4;
    }
    if((((int)_d3_5.center.x + 25 >= (int)tapPoint.x) && ((int)_d3_5.center.x - 25 < (int)tapPoint.x)) &&
       (((int)_d3_5.center.y + 25 >= (int)tapPoint.y) && ((int)_d3_5.center.y - 25 <= (int)tapPoint.y))){
        _d3_5.image = [UIImage imageNamed:(@"5_B.png")];
        thirdDice = 5;
    }
    if((((int)_d3_6.center.x + 25 >= (int)tapPoint.x) && ((int)_d3_6.center.x - 25 < (int)tapPoint.x)) &&
       (((int)_d3_6.center.y + 25 >= (int)tapPoint.y) && ((int)_d3_6.center.y - 25 <= (int)tapPoint.y))){
        _d3_6.image = [UIImage imageNamed:(@"6_B.png")];
        thirdDice = 6;
    }
    if(firstDice + secondDice + thirdDice + fourthDice + fifthDice == 0){
        _calculateImage.userInteractionEnabled = false;
        _calculateImage.image = [UIImage imageNamed:(@"Calculate_W.png")];
    }
    else{
        _calculateImage.userInteractionEnabled = true;
        _calculateImage.image = [UIImage imageNamed:(@"Calculate_B.png")];
    }
}

- (IBAction)fourthDiceTapped:(id)sender {
    CGPoint tapPoint = [sender locationInView:self.view];
    _d4_0.image = [UIImage imageNamed:(@"0_W.png")];
    _d4_1.image = [UIImage imageNamed:(@"1_W.png")];
    _d4_2.image = [UIImage imageNamed:(@"2_W.png")];
    _d4_3.image = [UIImage imageNamed:(@"3_W.png")];
    _d4_4.image = [UIImage imageNamed:(@"4_W.png")];
    _d4_5.image = [UIImage imageNamed:(@"5_W.png")];
    _d4_6.image = [UIImage imageNamed:(@"6_W.png")];
    
    if((((int)_d4_0.center.x + 25 >= (int)tapPoint.x) && ((int)_d4_0.center.x - 25 <= (int)tapPoint.x)) &&
       (((int)_d4_0.center.y + 25 >= (int)tapPoint.y) && ((int)_d4_0.center.y - 25 <= (int)tapPoint.y))){
        _d4_0.image = [UIImage imageNamed:(@"0_B.png")];
        fourthDice = 0;
    }
    if((((int)_d4_1.center.x + 25 >= (int)tapPoint.x) && ((int)_d4_1.center.x - 25 < (int)tapPoint.x)) &&
       (((int)_d4_1.center.y + 25 >= (int)tapPoint.y) && ((int)_d4_1.center.y - 25 <= (int)tapPoint.y))){
        _d4_1.image = [UIImage imageNamed:(@"1_B.png")];
        fourthDice = 1;
    }
    if((((int)_d4_2.center.x + 25 >= (int)tapPoint.x) && ((int)_d4_2.center.x - 25 < (int)tapPoint.x)) &&
       (((int)_d4_2.center.y + 25 >= (int)tapPoint.y) && ((int)_d4_2.center.y - 25 <= (int)tapPoint.y))){
        _d4_2.image = [UIImage imageNamed:(@"2_B.png")];
        fourthDice = 2;
    }
    if((((int)_d4_3.center.x + 25 >= (int)tapPoint.x) && ((int)_d4_3.center.x - 25 < (int)tapPoint.x)) &&
       (((int)_d4_3.center.y + 25 >= (int)tapPoint.y) && ((int)_d4_3.center.y - 25 <= (int)tapPoint.y))){
        _d4_3.image = [UIImage imageNamed:(@"3_B.png")];
        fourthDice = 3;
    }
    if((((int)_d4_4.center.x + 25 >= (int)tapPoint.x) && ((int)_d4_4.center.x - 25 < (int)tapPoint.x)) &&
       (((int)_d4_4.center.y + 25 >= (int)tapPoint.y) && ((int)_d4_4.center.y - 25 <= (int)tapPoint.y))){
        _d4_4.image = [UIImage imageNamed:(@"4_B.png")];
        fourthDice = 4;
    }
    if((((int)_d4_5.center.x + 25 >= (int)tapPoint.x) && ((int)_d4_5.center.x - 25 < (int)tapPoint.x)) &&
       (((int)_d4_5.center.y + 25 >= (int)tapPoint.y) && ((int)_d4_5.center.y - 25 <= (int)tapPoint.y))){
        _d4_5.image = [UIImage imageNamed:(@"5_B.png")];
        fourthDice = 5;
    }
    if((((int)_d4_6.center.x + 25 >= (int)tapPoint.x) && ((int)_d4_6.center.x - 25 < (int)tapPoint.x)) &&
       (((int)_d4_6.center.y + 25 >= (int)tapPoint.y) && ((int)_d4_6.center.y - 25 <= (int)tapPoint.y))){
        _d4_6.image = [UIImage imageNamed:(@"6_B.png")];
        fourthDice = 6;
    }
    if(firstDice + secondDice + thirdDice + fourthDice + fifthDice == 0){
        _calculateImage.userInteractionEnabled = false;
        _calculateImage.image = [UIImage imageNamed:(@"Calculate_W.png")];
    }
    else{
        _calculateImage.userInteractionEnabled = true;
        _calculateImage.image = [UIImage imageNamed:(@"Calculate_B.png")];
    }
}

- (IBAction)fifthDiceTapped:(id)sender {
    CGPoint tapPoint = [sender locationInView:self.view];
    _d5_0.image = [UIImage imageNamed:(@"0_W.png")];
    _d5_1.image = [UIImage imageNamed:(@"1_W.png")];
    _d5_2.image = [UIImage imageNamed:(@"2_W.png")];
    _d5_3.image = [UIImage imageNamed:(@"3_W.png")];
    _d5_4.image = [UIImage imageNamed:(@"4_W.png")];
    _d5_5.image = [UIImage imageNamed:(@"5_W.png")];
    _d5_6.image = [UIImage imageNamed:(@"6_W.png")];
    
    if((((int)_d5_0.center.x + 25 >= (int)tapPoint.x) && ((int)_d5_0.center.x - 25 <= (int)tapPoint.x)) &&
       (((int)_d5_0.center.y + 25 >= (int)tapPoint.y) && ((int)_d5_0.center.y - 25 <= (int)tapPoint.y))){
        _d5_0.image = [UIImage imageNamed:(@"0_B.png")];
        fifthDice = 0;
    }
    if((((int)_d5_1.center.x + 25 >= (int)tapPoint.x) && ((int)_d5_1.center.x - 25 < (int)tapPoint.x)) &&
       (((int)_d5_1.center.y + 25 >= (int)tapPoint.y) && ((int)_d5_1.center.y - 25 <= (int)tapPoint.y))){
        _d5_1.image = [UIImage imageNamed:(@"1_B.png")];
        fifthDice = 1;
    }
    if((((int)_d5_2.center.x + 25 >= (int)tapPoint.x) && ((int)_d5_2.center.x - 25 < (int)tapPoint.x)) &&
       (((int)_d5_2.center.y + 25 >= (int)tapPoint.y) && ((int)_d5_2.center.y - 25 <= (int)tapPoint.y))){
        _d5_2.image = [UIImage imageNamed:(@"2_B.png")];
        fifthDice = 2;
    }
    if((((int)_d5_3.center.x + 25 >= (int)tapPoint.x) && ((int)_d5_3.center.x - 25 < (int)tapPoint.x)) &&
       (((int)_d5_3.center.y + 25 >= (int)tapPoint.y) && ((int)_d5_3.center.y - 25 <= (int)tapPoint.y))){
        _d5_3.image = [UIImage imageNamed:(@"3_B.png")];
        fifthDice = 3;
    }
    if((((int)_d5_4.center.x + 25 >= (int)tapPoint.x) && ((int)_d5_4.center.x - 25 < (int)tapPoint.x)) &&
       (((int)_d5_4.center.y + 25 >= (int)tapPoint.y) && ((int)_d5_4.center.y - 25 <= (int)tapPoint.y))){
        _d5_4.image = [UIImage imageNamed:(@"4_B.png")];
        fifthDice = 4;
    }
    if((((int)_d5_5.center.x + 25 >= (int)tapPoint.x) && ((int)_d5_5.center.x - 25 < (int)tapPoint.x)) &&
       (((int)_d5_5.center.y + 25 >= (int)tapPoint.y) && ((int)_d5_5.center.y - 25 <= (int)tapPoint.y))){
        _d5_5.image = [UIImage imageNamed:(@"5_B.png")];
        fifthDice = 5;
    }
    if((((int)_d5_6.center.x + 25 >= (int)tapPoint.x) && ((int)_d5_6.center.x - 25 < (int)tapPoint.x)) &&
       (((int)_d5_6.center.y + 25 >= (int)tapPoint.y) && ((int)_d5_6.center.y - 25 <= (int)tapPoint.y))){
        _d5_6.image = [UIImage imageNamed:(@"6_B.png")];
        fifthDice = 6;
    }
    if(firstDice + secondDice + thirdDice + fourthDice + fifthDice == 0){
        _calculateImage.userInteractionEnabled = false;
        _calculateImage.image = [UIImage imageNamed:(@"Calculate_W.png")];
    }
    else{
        _calculateImage.userInteractionEnabled = true;
        _calculateImage.image = [UIImage imageNamed:(@"Calculate_B.png")];
    }
}


- (IBAction)callDiceTapped:(id)sender {
    CGPoint tapPoint = [sender locationInView:self.view];
    _c1.image = [UIImage imageNamed:(@"1_W.png")];
    _c2.image = [UIImage imageNamed:(@"2_W.png")];
    _c3.image = [UIImage imageNamed:(@"3_W.png")];
    _c4.image = [UIImage imageNamed:(@"4_W.png")];
    _c5.image = [UIImage imageNamed:(@"5_W.png")];
    _c6.image = [UIImage imageNamed:(@"6_W.png")];
    if((((int)_c1.center.x + 25 >= (int)tapPoint.x) && ((int)_c1.center.x - 25 <= (int)tapPoint.x)) &&
       (((int)_c1.center.y + 25 >= (int)tapPoint.y) && ((int)_c1.center.y - 25 <= (int)tapPoint.y))){
        _c1.image = [UIImage imageNamed:(@"1_B.png")];
        callDiceInt = 1;
    }
    if((((int)_c2.center.x + 25 >= (int)tapPoint.x) && ((int)_c2.center.x - 25 < (int)tapPoint.x)) &&
       (((int)_c2.center.y + 25 >= (int)tapPoint.y) && ((int)_c2.center.y - 25 <= (int)tapPoint.y))){
        _c2.image = [UIImage imageNamed:(@"2_B.png")];
        callDiceInt = 2;
    }
    if((((int)_c3.center.x + 25 >= (int)tapPoint.x) && ((int)_c3.center.x - 25 < (int)tapPoint.x)) &&
       (((int)_c3.center.y + 25 >= (int)tapPoint.y) && ((int)_c3.center.y - 25 <= (int)tapPoint.y))){
        _c3.image = [UIImage imageNamed:(@"3_B.png")];
        callDiceInt = 3;
    }
    if((((int)_c4.center.x + 25 >= (int)tapPoint.x) && ((int)_c4.center.x - 25 < (int)tapPoint.x)) &&
       (((int)_c4.center.y + 25 >= (int)tapPoint.y) && ((int)_c4.center.y - 25 <= (int)tapPoint.y))){
        _c4.image = [UIImage imageNamed:(@"4_B.png")];
        callDiceInt = 4;
    }
    if((((int)_c5.center.x + 25 >= (int)tapPoint.x) && ((int)_c5.center.x - 25 < (int)tapPoint.x)) &&
       (((int)_c5.center.y + 25 >= (int)tapPoint.y) && ((int)_c5.center.y - 25 <= (int)tapPoint.y))){
        _c5.image = [UIImage imageNamed:(@"5_B.png")];
        callDiceInt = 5;
    }
    if((((int)_c6.center.x + 25 >= (int)tapPoint.x) && ((int)_c6.center.x - 25 < (int)tapPoint.x)) &&
       (((int)_c6.center.y + 25 >= (int)tapPoint.y) && ((int)_c6.center.y - 25 <= (int)tapPoint.y))){
        _c6.image = [UIImage imageNamed:(@"6_B.png")];
        callDiceInt = 6;
    }
}


- (IBAction)addToCall:(id)sender {
    callCountInt++;
    _callLabel.text = [NSString stringWithFormat:(@"%d"), callCountInt];
}

- (IBAction)subtractFromCall:(id)sender {
    if(callCountInt > 1){
    callCountInt--;
    _callLabel.text = [NSString stringWithFormat:(@"%d"), callCountInt];
    }
}

- (IBAction)addToTotal:(id)sender {
    totalDiceInt++;
    _totalDiceLabel.text = [NSString stringWithFormat:(@"%d"), totalDiceInt];
}

- (IBAction)subtractFromTotal:(id)sender {
    if(totalDiceInt > 2){
        totalDiceInt--;
        _totalDiceLabel.text = [NSString stringWithFormat:(@"%d"), totalDiceInt];
    }
}

- (IBAction)onCalculateTapped:(id)sender {
    int callValue = callCountInt * 6 + callDiceInt;
    double bestOdds = [self calculateOdds: callValue];
    int bestCall = callValue;
    bestOdds = 1 - bestOdds;
    if(bestOdds != 0){
    bestOdds = bestOdds - 0.2;
    }
    
    NSString *callString = [NSString stringWithFormat:@"%@ %f",@"Bullshit.", bestOdds];
    
    for(int i = callValue + 1; i <= callValue + 7; i++){
        double newOdds = [self calculateOdds:i];
        if (callDiceInt == (i - 1) % 6 + 1){
            if(newOdds != 0){
            newOdds = newOdds + 0.2;
            }
        }
        if((newOdds > bestOdds) || ((newOdds > 0.7) && totalDiceInt >= 12) || ((newOdds > 0.5) && totalDiceInt < 12)){
            bestOdds = newOdds;
            bestCall = i;
            callString = [NSString stringWithFormat:@"%d %d's %f", ((bestCall - 1) / 6), ((bestCall - 1) % 6 + 1), bestOdds];
        }
    }
    
    _resultLabel.text = callString;
}

- (double)calculateOdds:(int)callValue{
    int quantity = (callValue - 1) / 6;
    int rank = (callValue - 1) % 6 + 1;
    int enemyDice = totalDiceInt;
    if(firstDice == rank){quantity--;}
    if(secondDice == rank){quantity--;}
    if(thirdDice == rank){quantity--;}
    if(fourthDice == rank){quantity--;}
    if(fifthDice == rank){quantity--;}
    if(firstDice != 0){enemyDice--;}
    if(secondDice != 0){enemyDice--;}
    if(thirdDice != 0){enemyDice--;}
    if(fourthDice != 0){enemyDice--;}
    if(fifthDice != 0){enemyDice--;}
    
    double odds = 0;
    if(enemyDice >= quantity){
    for(int i = quantity - 1; i >= 0; i--)
    {
        double temp_odds = ([self oneSixthToThe:i] * [self fiveSixthsToThe:(enemyDice - i)]);
        temp_odds = temp_odds * [self factCount:enemyDice :enemyDice - i : i];
        odds = odds + temp_odds;
    }
    }else {
        odds = 1;
    }
    
    return 1 - odds;
}

- (int)factCount: (int)total:(int)first:(int)second{
    double value = 1;
    for(int i = total; i > first && i > second; i--){
        value = value * i;
    }
    int i2 = total;
    while(i2 > 0){
        if(i2 <= first && i2 <= second){
            value = value / i2;
        }
        i2--;
    }
    return value;
}

- (double) fiveSixthsToThe: (int)number {
    double value = 1;
    for(int i = 0; i < number; i++){
        value = value * 5 / 6;
    }
    return value;
}

-(double) oneSixthToThe: (int)number {
    double value = 1;
    for(int i = 0; i < number; i++){
        value = value * 1 / 6;
    }
    return value;
}


@end
