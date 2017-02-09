//
//  BuyBitcoinViewController.m
//  Blockchain
//
//  Created by kevinwu on 1/27/17.
//  Copyright © 2017 Blockchain Luxembourg S.A. All rights reserved.
//

#import "BuyBitcoinViewController.h"
#import <WebKit/WebKit.h>
#import "NSString+NSString_EscapeQuotes.h"
#import "RootService.h"

@interface BuyBitcoinViewController () <WKNavigationDelegate, WKScriptMessageHandler>
@property (nonatomic) WKWebView *webView;
@end

@implementation BuyBitcoinViewController

- (id)init
{
    if (self = [super init]) {
        
        WKWebViewConfiguration *configuration = [[WKWebViewConfiguration alloc] init];
        WKUserContentController* userController = [[WKUserContentController alloc] init];
        
        [userController addScriptMessageHandler:self name:WEBKIT_HANDLER_BUY_COMPLETED];
        
        configuration.userContentController = userController;
        
        self.webView = [[WKWebView alloc] initWithFrame:CGRectMake(0, DEFAULT_HEADER_HEIGHT, self.view.frame.size.width, self.view.frame.size.height - DEFAULT_HEADER_HEIGHT) configuration:configuration];
        [self.view addSubview:self.webView];
        
        self.webView.navigationDelegate = self;
        self.automaticallyAdjustsScrollViewInsets = NO;
        
        NSURL *login = [NSURL URLWithString:URL_BUY_LOGIN];
        NSURLRequest *request = [NSURLRequest requestWithURL:login cachePolicy:NSURLRequestUseProtocolCachePolicy timeoutInterval: 10.0];
        [self.webView loadRequest:request];
        
    }
    return self;
}

- (void)loginWithGuid:(NSString *)guid sharedKey:(NSString *)sharedKey password:(NSString *)password
{
    NSString *function = [NSString stringWithFormat:@"activateMobileBuy(\"%@\", \"%@\", \"%@\")", [guid escapeStringForJS], [sharedKey escapeStringForJS], [password escapeStringForJS]];
    [self.webView evaluateJavaScript:function completionHandler:^(id _Nullable result, NSError * _Nullable error) {
        DLog(@"Login result %@, error %@", result, error);
    }];
}

- (void)userContentController:(WKUserContentController *)userContentController didReceiveScriptMessage:(WKScriptMessage *)message
{
    DLog(@"Received script message");
    [self.delegate watchPendingTrades];
}

@end
