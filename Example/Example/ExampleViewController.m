#import "ExampleViewController.h"
#import "DFCircleActivityIndicator.h"

@implementation ExampleViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //Standard
    DFCircleActivityIndicator *circleIndicator1 = [[DFCircleActivityIndicator alloc] initWithFrame:CGRectMake(30, 50, 100, 100)];
    [self.view addSubview:circleIndicator1];
    [circleIndicator1 startAnimation];
    
    //Custom color and alpha
    DFCircleActivityIndicator *circleIndicator2 = [[DFCircleActivityIndicator alloc] initWithFrame:CGRectMake(185, 50, 100, 100)];
    circleIndicator2.lineColor = [UIColor redColor];
    circleIndicator2.lineAlpha = 0.9f;
    [self.view addSubview:circleIndicator2];
    [circleIndicator2 startAnimation];
    
    //Custom line width and empty size
    DFCircleActivityIndicator *circleIndicator3 = [[DFCircleActivityIndicator alloc] initWithFrame:CGRectMake(40, 270, 80, 80)];
    circleIndicator3.lineColor = [UIColor blueColor];
    circleIndicator3.lineWidth = 5.0f;
    circleIndicator3.emptySize = 0.3f;
    [self.view addSubview:circleIndicator3];
    [circleIndicator3 startAnimation];
    
    //Playing with visual
    DFCircleActivityIndicator *circleIndicator4 = [[DFCircleActivityIndicator alloc] initWithFrame:CGRectMake(190, 270, 80, 80)];
    circleIndicator4.lineColor = [UIColor orangeColor];
    circleIndicator4.lineWidth = 20.0f;
    circleIndicator4.emptySize = 0.02f;
    [self.view addSubview:circleIndicator4];
    [circleIndicator4 startAnimation];
}

@end
