//
//  JRHttpRequestError.h
//  HttpRequestDemo
//
//  Created by weile on 14-3-11.
//  Copyright (c) 2014年 weile. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef enum HTTPStatusCode {
    
	HTTPStatusCodeContinue = 100,
    
	HTTPStatusCodeSwitchingProtocols = 101,
    
	HTTPStatusCodeProcesing = 102,
    
	HTTPStatusCodeOK = 200,
    
	HTTPStatusCodeCreated = 201,
    
	HTTPStatusCodeAccepted = 202,
    
	HTTPStatusCodeNonAuthoritativeInformation = 203,
    
	HTTPStatusCodeNoContent = 204,
    
	HTTPStatusCodeResetContent = 205,
    
	HTTPStatusCodePartialContent = 206,
    
	HTTPStatusCodeMultiStatus = 207,
    
	HTTPStatusCodeMultipleChoices = 300,
    
	HTTPStatusCodeMovedPermanently = 301,
    
	HTTPStatusCodeMovedTemporarily = 302,
    
	HTTPStatusCodeSeeOther = 303,
    
	HTTPStatusCodeNotModified = 304,
    
	HTTPStatusCodeUseProxy = 305,
    
	HTTPStatusCodeTemporaryRedirect = 307,
    
	HTTPStatusCodeBadRequest = 400,
    
	HTTPStatusCodeUnauthorized = 401,
    
	HTTPStatusCodePaymentRequired = 402,
    
	HTTPStatusCodeForbidden = 403,
    
	HTTPStatusCodeNotFound = 404,
    
	HTTPStatusCodeMethodNotAllowed = 405,
    
	HTTPStatusCodeNotAcceptable = 406,
    
	HTTPStatusCodeProxyAuthenticationRequired = 407,
    
	HTTPStatusCodeRequestTimeout = 408,
    
	HTTPStatusCodeConflict = 409,
    
	HTTPStatusCodeGone = 410,
    
	HTTPStatusCodeLengthRequired = 411,
    
	HTTPStatusCodePreconditionFailed = 412,
    
	HTTPStatusCodeRequestTooLong = 413,
    
	HTTPStatusCodeRequestURITooLong = 414,
    
	HTTPStatusCodeUnsupportedMediaType = 415,
    
	HTTPStatusCodeRequestedRangeNotSatisfiable = 416,
    
	HTTPStatusCodeExpectationFailed = 417,
    
	HTTPStatusCodeMethodFailure = 420,
    
	HTTPStatusCodeUnprocessableEntity = 422,
    
	HTTPStatusCodeLocked = 423,
    
	HTTPStatusCodeFailedDependency = 424,
    
	HTTPStatusCodeInternalServerError = 500,
    
	HTTPStatusCodeNotImplemented = 501,
    
	HTTPStatusCodeBadGateway = 502,
    
	HTTPStatusCodeServiceUnavailable = 503,
    
	HTTPStatusCodeGatewayTimeout = 504,
    
	HTTPStatusCodeHTTPVersionNotSupported = 505,
    
	HTTPStatusCodeInsufficientStorage = 507,
    
} HTTPStatusCode;

@interface JRHttpRequestError : NSError

+ (id)errorWithHTTPStatusCode:(NSInteger)HTTPStatusCode;


@end
