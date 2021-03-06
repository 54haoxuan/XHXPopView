//
//  XHXPopView.h
//  XHXPopView
//
//  Created by xiahaoxuan on 16/9/5.
//  Copyright © 2016年 xhx.lx.edu. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef NS_ENUM(NSInteger, XTDirectionType)
{
    XTTypeOfUpLeft,     // 上左
    XTTypeOfUpCenter,   // 上中
    XTTypeOfUpRight,    // 上右
    
    XTTypeOfDownLeft,   // 下左
    XTTypeOfDownCenter, // 下中
    XTTypeOfDownRight,  // 下右
    
    XTTypeOfLeftUp,     // 左上
    XTTypeOfLeftCenter, // 左中
    XTTypeOfLeftDown,   // 左下
    
    XTTypeOfRightUp,    // 右上
    XTTypeOfRightCenter,// 右中
    XTTypeOfRightDown,  // 右下
    
};
@protocol selectIndexPathDelegate <NSObject>

- (void)selectIndexPathRow:(NSInteger )index;

@end

@interface XHXPopView : UIView

// backGoundView
@property (nonatomic, strong) UIView  * _Nonnull backGoundView;
// titles
@property (nonatomic, strong) NSArray * _Nonnull dataArray;
// images
@property (nonatomic, strong) NSArray * _Nonnull images;
// height
@property (nonatomic, assign) CGFloat row_height;
// font
@property (nonatomic, assign) CGFloat fontSize;
// textColor
@property (nonatomic, strong) UIColor * _Nonnull titleTextColor;
// delegate
@property (nonatomic, assign) id <selectIndexPathDelegate> _Nonnull delegate;
// 初始化方法
- (instancetype _Nonnull)initWithOrigin:(CGPoint) origin
                                  Width:(CGFloat) width
                                 Height:(CGFloat) height
                                   Type:(XTDirectionType)type
                                  Color:( UIColor * _Nonnull ) color;

- (void)popView;

- (void)dismiss;

@end
