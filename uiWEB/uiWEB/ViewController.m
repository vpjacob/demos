//
//  ViewController.m
//  uiWEB
//
//  Created by 刘毅 on 2017/8/31.
//  Copyright © 2017年 vpjacob. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()<UIWebViewDelegate>
@property (nonatomic, strong) UIWebView *webView;
@property (nonatomic, strong) UIView *vi;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self.view addSubview:self.webView];
    [self.webView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"https://www.baidu.com"]]];
    self.vi = [[UIView alloc] initWithFrame:self.view.frame];
    _vi.backgroundColor = [UIColor redColor];
    [self.view addSubview:self.vi];
    
}
- (void)webViewDidStartLoad:(UIWebView *)webView{
    [self.vi removeFromSuperview];
}
//- (void)webViewDidFinishLoad:(UIWebView *)webView{
//    [self.vi removeFromSuperview];
//}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (UIWebView *)webView{
    if (!_webView) {
        _webView = [[UIWebView alloc] initWithFrame:self.view.frame];
        _webView.delegate = self;
    }
    return _webView;
}

@end
