//
//  WeatherRequestGet.m
//  HttpRequestDemo
//
//  Created by weile on 14-3-11.
//  Copyright (c) 2014年 weile. All rights reserved.
//

#import "WeatherRequestGet.h"

@implementation WeatherRequestGet

- (void)setParameter
{
    self.httpRequestString = [self.httpRequestString stringByAppendingString:[NSString stringWithFormat:@"%@.html",self.cityCode]];
}

@end
