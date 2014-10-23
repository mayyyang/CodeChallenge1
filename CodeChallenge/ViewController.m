//
//  ViewController.m
//  CodeChallenge
//
//  Created by May Yang on 10/23/14.
//  Copyright (c) 2014 May Yang. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *valueOneTextField;
@property (weak, nonatomic) IBOutlet UITextField *valueTwoTextField;
@property (weak, nonatomic) IBOutlet UIButton *webButton;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.

}
- (IBAction)onButtonPressedCalculate:(id)sender
{
    // 1. Retrieve number from valueOneTextField.

    NSInteger leftOperand = [self.valueOneTextField.text integerValue];

    // 2. Retrieve number from valueTwoTextField.

    NSInteger rightOperand = [self.valueTwoTextField.text integerValue];
    

    // 3. Multiply valueOneTextField * valueTwoTextField.

    NSInteger resultOperand = leftOperand * rightOperand;

    // 4. Put value of valueOneTextField * valueTwoTextField in   answerTextField.

    NSString *result = [NSString stringWithFormat:@"%li", (long)resultOperand];
    self.title = result;

    [self.view endEditing:YES];


    if (resultOperand %5 == 0)
    {
        NSLog(@"hi");
        self.webButton.enabled = YES;

    }
    else
    {
        self.webButton.enabled = NO;
    }
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    UIViewController *vC = segue.destinationViewController;
    vC.title = self.title;
}


@end
