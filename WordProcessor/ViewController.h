//
//  ViewController.h
//  WordProcessor
//
//  Created by Matt Milner on 6/16/16.
//  Copyright © 2016 Matt Milner. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
{
    
}


@property (nonatomic,weak) IBOutlet UILabel *sentenceCount;
@property (nonatomic,weak) IBOutlet UILabel *wordCount;
@property (nonatomic,weak) IBOutlet UILabel *letterCount;
@property (nonatomic,weak) IBOutlet UILabel *vowelCount;
@property (nonatomic,weak) IBOutlet UITextField *userText;
@property (nonatomic,weak) IBOutlet UIButton *getStats;

@end

