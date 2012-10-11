//
//  ViewController.m
//  Simple
//
//  Created by HEYMES Lucas on 11/10/12.
//  Copyright (c) 2012 HEYMES Lucas. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize helloLabel;
@synthesize toggleLanguageButton;
@synthesize visibilitySwitch;
@synthesize imageView;
@synthesize imageSelector;
@synthesize opacitySlider;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
    [self setHelloLabel:nil];
    [self setToggleLanguageButton:nil];
    [self setVisibilitySwitch:nil];
    [self setImageView:nil];
    [self setImageSelector:nil];
    [self setOpacitySlider:nil];
    [self setHelloLabel:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

- (void)dealloc {
    [helloLabel release];
    [toggleLanguageButton release];
    [visibilitySwitch release];
    [imageView release];
    [imageSelector release];
    [opacitySlider release];
    [helloLabel release];
    [super dealloc];
}
- (IBAction)toggleLanguage:(id)sender {
    if ([helloLabel.text isEqualToString:@"Hello world!"]) {
        helloLabel.text = @"Bonjour le monde!";
    } else {
        helloLabel.text = @"Hello world!";
    }

}

- (IBAction)toggleVisible:(id)sender {
    self.helloLabel.hidden = !self.helloLabel.hidden;
}

- (IBAction)changeImage:(id)sender {
    switch (imageSelector.selectedSegmentIndex) {
        case 0:
            imageView.image = [UIImage imageNamed:@"arcenciel.png"];
            break;
        case 1:
            imageView.image = [UIImage imageNamed:@"mousse.png"];
            break;
        case 2:
            imageView.image = [UIImage imageNamed:@"pirate.png"];
            break;
        case 3:
            imageView.image = [UIImage imageNamed:@"plage.png"];
            break;
        case 4:
            imageView.image = [UIImage imageNamed:@"sable.png"];
            break;
        case 5:
            imageView.image = [UIImage imageNamed:@"pirate-cat.jpg"];
            NSLog(@"Ahoy! Imeh a P'rat Cat young boy !");
//            imageView.backgroundColor = [UIColor redColor];
            break;
        default: // defensive coding!
            break;
    }
}

- (IBAction)changeTransparency:(id)sender {
    self.imageView.alpha = self.opacitySlider.value;
    NSLog(@"changeTransparency : %f", self.opacitySlider.value);
}
@end
