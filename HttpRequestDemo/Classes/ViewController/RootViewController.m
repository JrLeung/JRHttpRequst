//
//  RootViewController.m
//  HttpRequestDemo
//
//  Created by weile on 14-3-11.
//  Copyright (c) 2014年 weile. All rights reserved.
//

#import "RootViewController.h"
#import "ASIHTTPRequest.h"
#import "JSONKit.h"
#import "AFNetworking.h"
#import "MainViewController.h"
#import "WeatherRequestGet.h"
#import "JRBaseModel.h"

@interface RootViewController ()

@end

static NSString *weatherUrl = @"http://m.weather.com.cn/data/101011500.html";


@implementation RootViewController


- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    JRBaseModel *model = [[JRBaseModel alloc] initWithJsonArray:nil];
    NSLog(@"123  :%@",[model formatJsonStringValue:@"123"]);
    // Do any additional setup after loading the view from its nib.
}

- (IBAction)button1DidClick:(id)sender
{
    ASIHTTPRequest *request = [[ASIHTTPRequest alloc] initWithURL:[NSURL URLWithString:[weatherUrl stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding]]];
    [request setTimeOutSeconds:30.0f];
    [request setDelegate:self];
    [request startAsynchronous];
}


- (void)requestFinished:(ASIHTTPRequest *)request
{
    id response = [request.responseString objectFromJSONStringWithParseOptions:JKParseOptionLooseUnicode];
    
    NSLog(@"Response:%@ \n\nError:%d", response, request.responseStatusCode);
}

- (void)requestFailed:(ASIHTTPRequest *)request
{
    
}


- (IBAction)button2DidClick:(id)sender
{
    MainViewController *viewController = [[MainViewController alloc] init];
    [viewController setTitle:@"Main"];
    [self.navigationController pushViewController:viewController animated:YES];
    
}

- (IBAction)button3DidClick:(id)sender
{
    NSLog(@"---->CustomRequest");
    WeatherRequestGet *request = [[WeatherRequestGet alloc] initWithRequestCompletionBlock:^(id response) {
        //Do someThing
        NSLog(@"\n--->%@",response);
    } andRequestFailureBlock:^(NSError *error) {
        
    }];
    [request setHttpRequestString:@"http://m.weather.com.cn/data/"];
    [request setCityCode:@"101010100"];
    [request startAsynchronous];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
