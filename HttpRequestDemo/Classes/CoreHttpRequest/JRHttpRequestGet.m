//
//  HPHttpRequestGet.m
//  HttpRequestDemo
//
//  Created by weile on 14-3-11.
//  Copyright (c) 2014年 weile. All rights reserved.
//

#import "JRHttpRequestGet.h"
#import "JSONKit.h"
#import "JRHttpRequestError.h"

@implementation JRHttpRequestGet

@synthesize requestCompletionBlock = _requestCompletionBlock;
@synthesize requestFailureBlock = _requestFailureBlock;
@synthesize httpRequestString = _httpRequestString;

- (id)initWithRequestCompletionBlock:(void (^)(id))requestCompletionBlock
              andRequestFailureBlock:(void (^)(NSError *))requestFailureBlock
{
    NSParameterAssert(requestCompletionBlock);
    NSParameterAssert(requestFailureBlock);
    if (self = [super initWithURL:[NSURL URLWithString:@""]]) {
        _requestCompletionBlock = requestCompletionBlock;
        _requestFailureBlock = requestFailureBlock;
    }
    return self;
}

- (void)dealloc
{
    NSLog(@"\n--->dealloc\n--->%@\n--->%@",NSStringFromClass([self class]), NSStringFromSelector(_cmd));
    if (_httpRequestString) {
        _httpRequestString = nil;
    }
    if (_requestCompletionBlock) {
        _requestCompletionBlock = nil;
    }
    if (_requestFailureBlock) {
        _requestFailureBlock = nil;
    }
}

- (void)cancel
{
    NSLog(@"\n--->Cancel\n--->%@\n--->%@",NSStringFromClass([self class]), NSStringFromSelector(_cmd));
    [super cancel];
    [self cancelAuthentication];
    if (_requestCompletionBlock) {
        _requestCompletionBlock = nil;
    }
    if (_requestFailureBlock) {
        _requestFailureBlock = nil;
    }
}

- (void)startAsynchronous
{
    [self setupRequestUrl];
    [self prepareForRequest];
    [super startAsynchronous];
}

- (void)startSynchronous
{
    [self setupRequestUrl];
    [self prepareForRequest];
    [super startSynchronous];
}

- (void)prepareForRequest
{
    __weak JRHttpRequestGet *weakSelf = self;
    [weakSelf setCompletionBlock:^{
        NSString *response = [[NSString alloc] initWithData:weakSelf.responseData encoding:NSUTF8StringEncoding];
        NSLog(@"\n [ GET: %@ ]\n [ %d ]\n [ %@ ]\n [ RESPONSE: %@]",[weakSelf.url absoluteString], [weakSelf responseStatusCode] ,[weakSelf responseStatusMessage], response);
        
        if (weakSelf.responseStatusCode == HTTPStatusCodeOK) {
            if (self.requestCompletionBlock) {
                id responseData = [weakSelf.responseData objectFromJSONDataWithParseOptions:JKParseOptionLooseUnicode];
                self.requestCompletionBlock(responseData);
            }
        }
    }];
}

- (void)setupRequestUrl
{
    [self setParameter];
    [self setURL:[NSURL URLWithString:[_httpRequestString stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding]]];
}

- (void)setParameter
{
    
}


@end
