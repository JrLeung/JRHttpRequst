//
//  JRHttpRequestError.m
//  HttpRequestDemo
//
//  Created by weile on 14-3-11.
//  Copyright (c) 2014年 weile. All rights reserved.
//

#import "JRHttpRequestError.h"

@implementation JRHttpRequestError

+ (id)errorWithHTTPStatusCode:(NSInteger)HTTPStatusCode
{
    // http://en.wikipedia.org/wiki/Http_status_codes
	if (HTTPStatusCode >= HTTPStatusCodeOK && HTTPStatusCode < HTTPStatusCodeMultipleChoices)
    {
		return nil;
    }
    return [[[self class] alloc] initWithDomain:@"domain" code:HTTPStatusCode userInfo:nil];
}

@end
