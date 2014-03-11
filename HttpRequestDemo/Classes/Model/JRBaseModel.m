//
//  JRBaseModel.m
//  HttpRequestDemo
//
//  Created by weile on 14-3-11.
//  Copyright (c) 2014年 weile. All rights reserved.
//

#import "JRBaseModel.h"

@implementation JRBaseModel

- (id)initWithJsonDic:(NSDictionary *)aJson
{
    if (self = [super init]) {
        
    }
    return self;
}

- (id)initWithJsonArray:(NSArray *)aJson
{
    if (self = [super init]) {
        
    }
    return self;
}

- (NSString *)formatJsonStringValue:(NSString *)aString
{
    BOOL flag = YES;
    if (aString == nil || [aString isEqualToString:@""] || [aString isEqual:[NSNull null]] || aString.length <= 0 || [aString isEqual:nil] ) {
        flag = NO;
    }
    return flag? aString : @"";
}


@end
