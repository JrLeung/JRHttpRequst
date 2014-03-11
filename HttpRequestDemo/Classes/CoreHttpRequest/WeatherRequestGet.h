//
//  WeatherRequestGet.h
//  HttpRequestDemo
//
//  Created by weile on 14-3-11.
//  Copyright (c) 2014年 weile. All rights reserved.
//

#import "JRHttpRequestGet.h"

@interface WeatherRequestGet : JRHttpRequestGet

@property (nonatomic, copy) NSString *cityCode;

@end
