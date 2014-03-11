//
//  JRBaseModel.h
//  HttpRequestDemo
//
//  Created by weile on 14-3-11.
//  Copyright (c) 2014年 weile. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface JRBaseModel : NSObject

- (id)initWithJsonDic:(NSDictionary *)aJson;
- (id)initWithJsonArray:(NSArray *)aJson;
- (NSString *)formatJsonStringValue:(NSString *)aString;

@end
