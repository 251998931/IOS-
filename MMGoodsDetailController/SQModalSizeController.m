//
//  SQModalSizeController.m
//  MMGoodsDetailController
//
//  Created by shu on 16/5/17.
//  Copyright © 2016年 shu. All rights reserved.
//

#import "SQModalSizeController.h"
#import "MyPresentationConytollrt.h"
#import "AppDelegate.h"

@interface SQModalSizeController()<UITableViewDataSource,UITableViewDelegate>

@property(nonatomic,strong)UITableView* tableView;
@property(nonatomic,strong)UIView* shandowView;

@end

@implementation SQModalSizeController

- (instancetype)init
{
    if ((self = [super init])) {
        self.modalPresentationStyle = UIModalPresentationCustom;
        self.transitioningDelegate = self;
    }
    return self;
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    [UIView animateWithDuration:.5 animations:^{
        CGRect rect = CGRectMake(0, [UIScreen mainScreen].bounds.size.height - 210, CGRectGetWidth([UIScreen mainScreen].bounds), 200);
        self.view.frame = rect;
    }];
}

- (void)closeAction:(UIButton *)sender
{
    [UIView animateWithDuration:0.2 animations:^{
        CGRect rect = CGRectMake(CGRectGetWidth([UIScreen mainScreen].bounds), 0, CGRectGetWidth([UIScreen mainScreen].bounds), CGRectGetHeight([UIScreen mainScreen].bounds));
        self.view.frame = rect;
    } completion:^(BOOL finished) {
        [self dismissViewControllerAnimated:NO completion:^{
        }];
    }];
    
}

- (UIPresentationController *)presentationControllerForPresentedViewController:(UIViewController *)presented presentingViewController:(UIViewController *)presenting sourceViewController:(UIViewController *)source
{
    if (presented == self) {
        MyPresentationConytollrt *presen = [[MyPresentationConytollrt alloc] initWithPresentedViewController:presented presentingViewController:presenting];
        [presen setHidssView:^{
            [UIView animateWithDuration:.5 animations:^{
                CGRect rect = CGRectMake(0, [UIScreen mainScreen].bounds.size.height, CGRectGetWidth([UIScreen mainScreen].bounds), 200);
                self.view.frame = rect;
            } completion:^(BOOL finished) {
                [self dismissViewControllerAnimated:NO completion:^{
                    
                }];
            }];
        }];
        return presen;
    }
    return nil;
}



- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor darkGrayColor];
    CGRect rect = CGRectMake(0, 0, CGRectGetWidth([UIScreen mainScreen].bounds), 200);
    self.view.frame = rect;
    
//    UIButton *close = [UIButton buttonWithType:UIButtonTypeCustom];
//    close.frame = CGRectMake(20,30, 100, 30);
//    close.center = self.view.center;
//    [close setTitle:@"退出" forState:UIControlStateNormal];
//    [close addTarget:self action:@selector(closeAction:) forControlEvents:UIControlEventTouchUpInside];
//    close.backgroundColor = [UIColor orangeColor];
//    [self.view addSubview:close];
    
    _tableView= [[UITableView alloc]initWithFrame:CGRectMake(0, 0, CGRectGetWidth([UIScreen mainScreen].bounds), 200) style:UITableViewStylePlain];
    _tableView.delegate = self;
    _tableView.dataSource = self;
    _tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    _tableView.showsHorizontalScrollIndicator = NO;
    _tableView.showsVerticalScrollIndicator = NO;
    _tableView.backgroundColor = [UIColor redColor];
    [self.view addSubview:_tableView];

    
}

#pragma mark - UITableView

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 10;
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    return 50;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    UITableViewCell* cell = [[UITableViewCell alloc] init];
    
    UIView* line = [[UIView alloc] initWithFrame:CGRectMake(15, 0, CGRectGetWidth([UIScreen mainScreen].bounds)-15*2, 1)];
    line.backgroundColor = [UIColor redColor];
    [cell.contentView addSubview:line];
    
    return cell;
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
    
}




- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end


