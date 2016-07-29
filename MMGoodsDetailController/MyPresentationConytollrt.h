//
//  MyPresentationConytollrt.h
//  MMGoodsDetailController
//
//  Created by shu on 16/5/17.
//  Copyright © 2016年 shu. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MyPresentationConytollrt : UIPresentationController

@property (nonatomic, strong) UIView *dimmingView;
@property (nonatomic,strong) void(^hidssView)();

@end
