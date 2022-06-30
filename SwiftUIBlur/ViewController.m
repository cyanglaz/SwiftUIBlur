//
//  ViewController.m
//  SwiftUIBlur
//
//  Created by Chris Yang on 6/29/22.
//

#import "ViewController.h"
#import "SwiftUIBlur-Swift.h"

@interface ViewController ()
@property (strong) UIViewController* hostVc;
@property (strong) UIView* offscreenView;

@end

@implementation ViewController

- (void)viewDidLoad {
  UIViewController *swiftViewController = [[SwiftInterface new] makeSwiftUI:@"hello world" inputRadius:5];
  swiftViewController.view.frame = CGRectMake(0, 0, 1, 1);
  [self.view addSubview:swiftViewController.view];
  self.hostVc = swiftViewController;
}

- (void)viewDidAppear:(BOOL)animated {
  [super viewDidAppear:animated];
  NSObject *filter = self.hostVc.view.layer.sublayers.firstObject.filters.firstObject;
  UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(100, 100, 100, 100)];
  label.text = @"hello";
  label.layer.filters = @[filter];
  [self.view addSubview:label];
}


@end

