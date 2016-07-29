//
//  ViewController.m
//  MMGoodsDetailController
//
//  Created by shu on 16/5/17.
//  Copyright © 2016年 shu. All rights reserved.
//

#import "ViewController.h"
#import "SQModalSizeController.h"


@interface ViewController ()



@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.view.backgroundColor = [UIColor cyanColor];
    
    UIButton* btn = [[UIButton alloc] init];
    [self.view addSubview:btn];
    btn.backgroundColor = [UIColor yellowColor];
    btn.frame = CGRectMake(40, 40, 100, 100);
    [btn addTarget:self action:@selector(click:) forControlEvents:UIControlEventTouchUpInside];
    

    
}

-(void)click:(UIButton*)sender
{
    
 
   
        
    SQModalSizeController* mVc = [[SQModalSizeController alloc] init];
    mVc.modalPresentationStyle = UIModalPresentationCustom;
    mVc.view.frame = CGRectMake(0, [UIScreen mainScreen].bounds.size.height, CGRectGetWidth([UIScreen mainScreen].bounds), 200);
  
    [self presentViewController:mVc animated:NO completion:^{}];
 
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
