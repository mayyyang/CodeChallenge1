//
//  WebViewController.m
//  CodeChallenge
//
//  Created by May Yang on 10/23/14.
//  Copyright (c) 2014 May Yang. All rights reserved.
//

#import "WebViewController.h"

@interface WebViewController () <UIWebViewDelegate>

@property (weak, nonatomic) IBOutlet UIWebView *webView;
@property (weak, nonatomic) IBOutlet UIActivityIndicatorView *activityIndicator;
@end

@implementation WebViewController


- (void)webViewDidStartLoad:(UIWebView *)webView
{
    [self.activityIndicator startAnimating];
}


- (void)webViewDidFinishLoad:(UIWebView *)webView
{
    [self.activityIndicator stopAnimating];
}

- (void)viewDidLoad {
    [super viewDidLoad];

    self.activityIndicator.hidesWhenStopped = YES;

    NSURL *url = [NSURL URLWithString:@"http://mobilemakers.co"];
    NSURLRequest *urlRequest = [NSURLRequest requestWithURL:url];
    [self.webView loadRequest:urlRequest];

}

@end
