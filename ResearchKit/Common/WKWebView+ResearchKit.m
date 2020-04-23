//
//  WKWebView+ResearchKit.m
//  ResearchKit
//
//  Created by Viktoriia Huseinova on 2020-04-23.
//  Copyright © 2020 researchkit.org. All rights reserved.
//

#import "WKWebView+ResearchKit.h"

@implementation WKWebView (ResearchKit)

+ (WKWebView *)createResearchKitWebViewWith:(CGRect) frame {
    //instead of using [_webView setScalesPageToFit:YES];
    NSString *jScript = @"var meta = document.createElement('meta'); meta.setAttribute('name', 'viewport'); meta.setAttribute('content', 'width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=NO'); document.getElementsByTagName('head')[0].appendChild(meta);";

    WKUserScript *wkUScript = [[WKUserScript alloc] initWithSource:jScript injectionTime:WKUserScriptInjectionTimeAtDocumentEnd forMainFrameOnly:YES];
    WKUserContentController *wkUController = [[WKUserContentController alloc] init];
    [wkUController addUserScript:wkUScript];

    WKWebViewConfiguration *wkWebConfig = [[WKWebViewConfiguration alloc] init];
    wkWebConfig.userContentController = wkUController;
    
    WKWebView* webView = [[WKWebView alloc] initWithFrame:frame
                                            configuration:wkWebConfig];
    webView.contentMode = UIViewContentModeScaleAspectFit;
    return webView;
}

@end
