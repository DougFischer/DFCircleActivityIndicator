@interface DFCircleActivityIndicator : UIView

@property (nonatomic, copy) UIColor *lineColor;  //default is greenColor
@property (nonatomic, assign) CGFloat lineWidth; //default is 15.0f
@property (nonatomic, assign) CGFloat lineAlpha; //default is 0.50f;
@property (nonatomic, assign) CGFloat emptySize; //default is 0.20f
@property (nonatomic, readonly) BOOL animating;

- (void)startAnimation;
- (void)stopAnimation;

@end
