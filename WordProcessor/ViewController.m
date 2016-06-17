//
//  ViewController.m
//  WordProcessor
//
//  Created by Matt Milner on 6/16/16.
//  Copyright © 2016 Matt Milner. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction) buttonPressed: (UIButton *) sender{
    
    NSString *textField = self.userText.text;

    
    NSArray *wordCount = [textField componentsSeparatedByString:@" "];
    NSUInteger wordCountLength = [wordCount count];
    
    NSArray *sentenceCount = [textField componentsSeparatedByString:@". "];
    NSUInteger sentenceCountLength = [sentenceCount count];
    
    NSUInteger letterCountLength = [textField length] - wordCountLength;
    
    NSMutableArray *textFieldArray = [NSMutableArray new];
    for (NSInteger i=0; i<textField.length; i++) {
        [textFieldArray addObject:[NSString stringWithFormat:@"%C", [textField characterAtIndex:i]]];
    }
    
    int vowelCount = 0;
    for (NSString *letter in textFieldArray){
        
        if ([letter isEqualToString:@"a"] || [letter isEqualToString:@"A"] ){
            vowelCount++;
        }
        else if ([letter isEqualToString:@"e"] || [letter isEqualToString:@"E"]){
            vowelCount++;
        }
        else if ([letter isEqualToString:@"i"] || [letter isEqualToString:@"I"]){
            vowelCount++;
        }
        else if ([letter isEqualToString:@"o"] || [letter isEqualToString:@"O"]){
            vowelCount++;
        }
        else if([letter isEqualToString:@"u"] || [letter isEqualToString:@"U"]){
            vowelCount++;
        }
        
    }
    
    self.wordCount.text = [NSString stringWithFormat:@"There are %lu words.",wordCountLength];
    self.sentenceCount.text = [NSString stringWithFormat:@"There are %lu sentences.", sentenceCountLength];
    self.letterCount.text = [NSString stringWithFormat:@"There are %lu non-space characters.", letterCountLength];
    self.vowelCount.text = [NSString stringWithFormat:@"There are %d vowels.", vowelCount];
    
    
    [_userText resignFirstResponder];
}

@end
