//
//  ViewController.m
//

#import "MainController.h"

@interface MainController ()
@property (weak, nonatomic) UILabel* label;
@property (assign, nonatomic) int count;
@end

@implementation MainController

- (void)viewDidLoad {
    [super viewDidLoad];

    UIButton* button = [UIButton buttonWithType:UIButtonTypeSystem];
    [button setTitle:@"Click me" forState:UIControlStateNormal];
    [button sizeToFit];
    button.center = self.view.center;
    [button addTarget:self action:@selector(buttonClicked:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];

    UILabel* label = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 200, 50)];
    label.center = CGPointMake(self.view.center.x, self.view.center.y + 100);
    label.text = @"Hello, World!";
    label.textAlignment = NSTextAlignmentCenter;
    self.label = label;
    [self.view addSubview:label];
}

- (void)buttonClicked:(UIButton*)button {
    self.label.text = [NSString stringWithFormat:@"Clicked %d times", ++self.count];
}

@end
