DFCircleActivityIndicator
=========================

Native, customizable and animated circular view to show when long activity is running, for iOS Apps. No more images needed. Just drag and drop this class, set color and style and you're ready to go with startAnimation.


##Appearance

![You can make it looks something like that](https://raw.github.com/DougFischer/DFCircleActivityIndicator/master/Screenshot.png)


##Instalation 

To install `DFCircleActivityIndicator`, just drag and drop the .h and .m files into your project folder. Import when you need it.


##Usage

```bash
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
```

It must need QuartzCore framework. May looks 'slow' or 'flicking' on iOS Simulator, but works fine on device, even on iPhone 4.

##Development

You're welcome to make improvements.


[![Bitdeli Badge](https://d2weczhvl823v0.cloudfront.net/DougFischer/dfcircleactivityindicator/trend.png)](https://bitdeli.com/free "Bitdeli Badge")

