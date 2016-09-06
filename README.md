# XHXPopView
仿QQ消息添加按钮弹出视图

## 初始化方法
```objc
 XHXPopView *arrowView = [[XHXPopView alloc] initWithOrigin:point Width:200 Height:6*40 Type:XTTypeOfUpCenter Color:[UIColor whiteColor]];
```

## 设置data数组,字体,行高,文字颜色,遵循代理
```objc
XHXPopView *arrowView = [[XHXPopView alloc] initWithOrigin:point Width:200 Height:200 Type:XTTypeOfUpCenter Color:[UIColor whiteColor]];
```

## 初始化方法
```objc
arrowView.dataArray = @[@"多人聊天",@"加好友",@"扫一扫",@"发送到电脑",@"面对面快传",@"付款"];
arrowView.fontSize = 13;
arrowView.row_height = 40;
arrowView.titleTextColor = [UIColor blackColor];
arrowView.delegate = self;
```

## 显示PopView
```objc
[arrowView popView];
```

## 隐藏PopView
```objc
[_arrowView dismiss];
```

## 代理方法<selectIndexPathDelegate>
```objc
- (void)selectIndexPathRow:(NSInteger)index {
}
```

