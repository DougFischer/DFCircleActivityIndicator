#import "DFCircleActivityIndicator.h"

@interface DFCircleActivityIndicator ()

@property (nonatomic, strong) UIBezierPath *circleBezier;
@property (nonatomic, strong) CAShapeLayer *shapeLayer;

@end

@implementation DFCircleActivityIndicator


#pragma mark -
#pragma mark Initialization

- (id)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        [self commonInit];
    }
    return self;
}

- (id)initWithCoder:(NSCoder *)aDecoder {
    self = [super initWithCoder:aDecoder];
    if (self) {
        [self commonInit];
    }
    return self;
}

- (void)commonInit {
    [self initDefaults];
    [self initShape];
}


#pragma mark -
#pragma mark Auxiliar Initialization

- (void)initDefaults {
    _lineColor = [UIColor greenColor];
    _lineWidth = 15.0f;
    _lineAlpha = 0.50f;
    _emptySize = 0.20f;
    _animating = NO;
}

- (void)initShape {
    _circleBezier = [UIBezierPath bezierPathWithOvalInRect:CGRectMake(0, 0, self.frame.size.width, self.frame.size.height)];
    _shapeLayer = [CAShapeLayer layer];
    _shapeLayer.frame = CGRectMake(0, 0, self.frame.size.width, self.frame.size.height);
    _shapeLayer.geometryFlipped = YES;
    _shapeLayer.path = _circleBezier.CGPath;
    _shapeLayer.strokeColor = [[_lineColor colorWithAlphaComponent:_lineAlpha] CGColor];
    _shapeLayer.fillColor = nil;
    _shapeLayer.lineWidth = 15.0f;
    _shapeLayer.lineJoin = kCALineJoinRound;
    _shapeLayer.strokeEnd = 0.82f;
    [self.layer addSublayer:_shapeLayer];
}


#pragma mark -
#pragma mark Layout Handling

- (void)layoutSubviews {
    [super layoutSubviews];
    self.backgroundColor = [UIColor clearColor];
    
    _shapeLayer.frame = CGRectMake(0, 0, self.frame.size.width, self.frame.size.height);
    _shapeLayer.strokeColor = [[_lineColor colorWithAlphaComponent:_lineAlpha] CGColor];
    _shapeLayer.lineWidth = _lineWidth;
    _shapeLayer.strokeEnd = 1.0f - _emptySize;
    _shapeLayer.path = _circleBezier.CGPath;
}


#pragma mark -
#pragma mark Public Methods

- (void)startAnimation {
    if (!_animating) {
        _animating = YES;
        [self rotateWithOptions: UIViewAnimationOptionCurveEaseIn];
    }
}

- (void)stopAnimation {
    _animating = NO;
}


#pragma mark -
#pragma mark Animation Handling

- (void)rotateWithOptions:(UIViewAnimationOptions)options {
    [UIView animateWithDuration:0.45f delay:0.0f options:options
    animations: ^{
        self.transform = CGAffineTransformRotate(self.transform, M_PI / 2);
    }
    completion: ^(BOOL finished) {
        if (finished) {
            if (_animating) {
                [self rotateWithOptions:UIViewAnimationOptionCurveLinear];
            } else if (options != UIViewAnimationOptionCurveEaseOut) {
                [self rotateWithOptions:UIViewAnimationOptionCurveEaseOut];
            }
        }
    }];
}


#pragma mark -
#pragma mark Custom Setters 

- (void)setLineColor:(UIColor *)lineColor {
    _lineColor = lineColor;
    [self setNeedsLayout];
}

- (void)setLineWidth:(CGFloat)lineWidth {
    _lineWidth = lineWidth;
    [self setNeedsLayout];
}

- (void)setEmptySize:(CGFloat)emptySize {
    _emptySize = emptySize;
    [self setNeedsLayout];
}


@end
