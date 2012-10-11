//
//  ViewController.h
//  Simple
//
//  Created by HEYMES Lucas on 11/10/12.
//  Copyright (c) 2012 HEYMES Lucas. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (retain, nonatomic) IBOutlet UILabel *helloLabel;
@property (retain, nonatomic) IBOutlet UIButton *toggleLanguageButton;
@property (retain, nonatomic) IBOutlet UISwitch *visibilitySwitch;
@property (retain, nonatomic) IBOutlet UIImageView *imageView;
@property (retain, nonatomic) IBOutlet UISegmentedControl *imageSelector;
@property (retain, nonatomic) IBOutlet UISlider *opacitySlider;

- (IBAction)toggleLanguage:(id)sender;
- (IBAction)toggleVisible:(id)sender;
- (IBAction)changeImage:(id)sender;
- (IBAction)changeTransparency:(id)sender;

@end
