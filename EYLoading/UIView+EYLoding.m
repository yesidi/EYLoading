//
//  UIView+EYLoding.m
//  loading
//
//  Created by galaxy on 15/2/22.
//  Copyright (c) 2015年 galaxy. All rights reserved.
//

#import "UIView+EYLoding.h"
#import <objc/runtime.h>

#define GAP 5
#define ALERT_TEXT_WIDTH 200.f
#define DISAPEAR_DURATION 0.5f

const void *EY_ALERT_TEXT_KEY = @"EYAlertTextKey";
const void *EY_LOAD_VIEW_KEY = @"EYLoadViewKey";
const void *EY_GAP_KEY = @"EYGapKey";
const void *EY_INDICATOR_KEY = @"EYIndicatorKey";


@implementation UIView (EYLoding)
@dynamic alertText;
@dynamic loadView;
@dynamic activityIndicatorViewStyle;

-(UIActivityIndicatorViewStyle)activityIndicatorViewStyle
{
    return [objc_getAssociatedObject(self, EY_INDICATOR_KEY) integerValue];
}

-(void)setActivityIndicatorViewStyle:(UIActivityIndicatorViewStyle)activityIndicatorViewStyle
{
    return objc_setAssociatedObject(self, EY_INDICATOR_KEY, [NSNumber numberWithInteger:activityIndicatorViewStyle], OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

-(NSString *)alertText
{
    return objc_getAssociatedObject(self, EY_ALERT_TEXT_KEY);
}

-(void)setAlertText:(NSString *)alertText
{
    return objc_setAssociatedObject(self, EY_ALERT_TEXT_KEY, alertText, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

-(UIView *)loadView
{
    return objc_getAssociatedObject(self, EY_LOAD_VIEW_KEY);
}

-(void)setLoadView:(UIView *)loadView
{
    return objc_setAssociatedObject(self, EY_LOAD_VIEW_KEY, loadView, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

-(void)startLoading
{
    if (!self.loadView) {
        //loadView
        self.loadView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 30, 30)];
        self.loadView.backgroundColor = [UIColor clearColor];
        
        //indicator
        UIActivityIndicatorView *indicator = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:self.activityIndicatorViewStyle];
        [indicator startAnimating];
        
        //alertText
        UILabel *alertLabel = [[UILabel alloc] init];
        alertLabel.text = self.alertText;
        alertLabel.textColor = [UIColor lightGrayColor];
        [alertLabel sizeToFit];
        
        if (alertLabel.frame.size.width > ALERT_TEXT_WIDTH)
        {
            alertLabel.numberOfLines = (NSInteger)ceilf(alertLabel.frame.size.width/ALERT_TEXT_WIDTH);
            alertLabel.frame = CGRectMake(0, 0, ALERT_TEXT_WIDTH, alertLabel.frame.size.width*(NSInteger)ceilf(alertLabel.frame.size.width/ALERT_TEXT_WIDTH));
            [alertLabel sizeToFit];
        }
        [self layoutWithIndicator:indicator alertLabel:alertLabel];
    }
    [self addSubview:self.loadView];
}

-(void)layoutWithIndicator:(UIActivityIndicatorView *)indicator alertLabel:(UILabel *)alertLabel
{
    //layout
    self.loadView.frame = CGRectMake(0, 0, indicator.frame.size.width + alertLabel.frame.size.width + GAP, MAX(indicator.frame.size.height, alertLabel.frame.size.height));
    indicator.frame = CGRectMake(0, self.loadView.center.y-(indicator.frame.size.height/2), indicator.frame.size.width, indicator.frame.size.height);
    alertLabel.frame = CGRectMake(indicator.frame.size.width + GAP, self.loadView.center.y-(alertLabel.frame.size.height/2), alertLabel.frame.size.width, alertLabel.frame.size.height);
    
    [self.loadView addSubview:indicator];
    [self.loadView addSubview:alertLabel];
    self.loadView.center = self.center;
}

-(void)stopLoading
{
    [UIView animateWithDuration:DISAPEAR_DURATION animations:^{
        self.loadView.alpha = 0.f;
    } completion:^(BOOL finished) {
        [self.loadView removeFromSuperview];
        self.loadView.alpha = 1.f;
    }];
}
@end
