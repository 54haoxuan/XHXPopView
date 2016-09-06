//
//  XHXTableViewCell.m
//  XHXPopView
//
//  Created by xiahaoxuan on 16/9/5.
//  Copyright © 2016年 xhx.lx.edu. All rights reserved.
//

#import "XHXTableViewCell.h"


@implementation XHXTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setFrame:(CGRect)frame{
    
    frame.size.height -= 1;
    [super setFrame:frame];
}

@end
