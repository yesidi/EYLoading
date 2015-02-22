//
//  UIView+EYLoding.h
//  loading
//
//  Created by galaxy on 15/2/22.
//  Copyright (c) 2015年 galaxy. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (EYLoding)
@property(nonatomic, retain) NSString *alertText;
@property(nonatomic, retain) UIView *loadView;
-(void)startLoading;
-(void)stopLoading;
@end
