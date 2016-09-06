//
//  ViewController.m
//  XHXPopViewExample
//
//  Created by xiahaoxuan on 16/9/5.
//  Copyright © 2016年 xhx.lx.edu. All rights reserved.
//

#import "ViewController.h"
#import "XHXPopView.h"

@interface ViewController ()<selectIndexPathDelegate>
@property (nonatomic,strong)XHXPopView *arrowView;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UIButton *plusBtn = [[UIButton alloc] init];
    plusBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    plusBtn.frame = CGRectMake(200, 80, 40, 40);
    [plusBtn setTitle:@"➕" forState:UIControlStateNormal];
    plusBtn.backgroundColor = [UIColor redColor];
    [plusBtn addTarget:self action:@selector(didClickPlusBtn:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:plusBtn];
}
//加号按钮的回调
- (void)didClickPlusBtn:(UIButton *)btn {
    
    
    CGPoint point = CGPointMake(btn.center.x, btn.frame.origin.y + 64);
    
    // NSLog(@"%f",btn.center.x);
    
    XHXPopView *arrowView = [[XHXPopView alloc] initWithOrigin:point Width:200 Height:200 Type:XTTypeOfUpCenter Color:[UIColor whiteColor]];
    
    arrowView.dataArray = @[@"多人聊天",@"加好友",@"扫一扫",@"发送到电脑",@"面对面快传",@"付款"];
    arrowView.fontSize = 13;
    arrowView.row_height = 40;
    arrowView.titleTextColor = [UIColor blackColor];
    arrowView.delegate = self;
    //  arrowView.images ;
    [arrowView popView];
    _arrowView = arrowView;
}
- (void)selectIndexPathRow:(NSInteger)index {
    
    [_arrowView dismiss];
    switch (index) {
            case 0:
        {
            NSLog(@"Click 0 ......");
        }
            break;
            case 1:
        {
            NSLog(@"Clikc 1 ......");
        }
            break;
            case 2:
        {
            NSLog(@"Clikc 2 ......");
        }
            break;
            case 3:
        {
            NSLog(@"Clikc 3 ......");
        }
            break;
        default:
            break;
    }
}


@end
