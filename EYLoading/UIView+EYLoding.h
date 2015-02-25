//
//  UIView+EYLoding.h
//  loading
//
//  Created by galaxy on 15/2/22.
//  Copyright (c) 2015年 galaxy. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LoadView : UIView
@property(nonatomic, strong) UIActivityIndicatorView *indicator;
@property(nonatomic, strong) UILabel *alertLabel;
@property(nonatomic) UIActivityIndicatorViewStyle activityIndicatorViewStyle;
- (id)initWithFrame:(CGRect)frame superView:(UIView *)superView alertText:(NSString *)alertMessage fixedY:(CGFloat)fixedY;
@end

@interface UIView (EYLoding)
@property(nonatomic, strong) LoadView *loadView;

-(void)startLoading;
-(void)startLoadingWithScrollViewFixed:(BOOL)shouldFixed alertText:(NSString *)alertText;
-(void)stopLoading;
@end
