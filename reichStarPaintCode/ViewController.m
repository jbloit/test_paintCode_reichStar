//
//  ViewController.m
//  reichStarPaintCode
//
//  Created by Julien Bloit on 21/05/2021.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    _paintCodeView.backgroundColor = [UIColor clearColor];
}

- (IBAction)sliderChanged:(UISlider *)sender {
    NSLog(@"slider value changed %d", sender.value);
    [_paintCodeView setAngle:sender.value];
    

}

@end
