//
//  JRHttpRequestGet.h
//  HttpRequestDemo
//
//  Created by weile on 14-3-11.
//  Copyright (c) 2014年 weile. All rights reserved.
//

#import "ASIHTTPRequest.h"

@interface JRHttpRequestGet : ASIHTTPRequest
@property (nonatomic, copy) NSString *httpRequestString;
@property (nonatomic, copy, readonly) void (^requestCompletionBlock)(id response);
@property (nonatomic, copy, readonly) void (^requestFailureBlock) (NSError *error);

- (id)initWithRequestCompletionBlock:(void (^)(id response))requestCompletionBlock
              andRequestFailureBlock:(void (^)(NSError *error))requestFailureBlock;

- (void)setParameter;

@end
