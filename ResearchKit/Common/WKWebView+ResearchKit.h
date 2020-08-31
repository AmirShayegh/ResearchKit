//
//  WKWebView+ResearchKit.h
//  ResearchKit
//
//  Created by Viktoriia Huseinova on 2020-04-23.
//  Copyright © 2020 researchkit.org. All rights reserved.
//

#import <WebKit/WebKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface WKWebView (ResearchKit)
+ (WKWebView *)createResearchKitWebViewWith:(CGRect) frame;

@end

NS_ASSUME_NONNULL_END