//
//  TemplateParamsController.h
//  Tester
//
//  This file was automatically generated for Stamplay by APIMATIC v2.0 ( https://apimatic.io ) on 06/16/2016
//
#import <Foundation/Foundation.h>
#import "Configuration.h"
#import "APIHelper.h"
#import "APIError.h"
#import "BaseController.h"
#import "UnirestClient.h"
#import "HttpContext.h"
#import "EchoResponse.h"

@interface TemplateParamsController : BaseController

/**
* Completion block definition for asynchronous call to Send String Array */
typedef void (^CompletedGetSendStringArray)(BOOL success, HttpContext* context, EchoResponse* response, NSError* error);

/**
* TODO: type endpoint description here
* @param    strings    Required parameter: Example: 
*/
- (void) sendStringArrayAsyncWithStrings:(NSArray*) strings
                completionBlock:(CompletedGetSendStringArray) onCompleted;

/**
* Completion block definition for asynchronous call to Send Integer Array */
typedef void (^CompletedGetSendIntegerArray)(BOOL success, HttpContext* context, EchoResponse* response, NSError* error);

/**
* TODO: type endpoint description here
* @param    integers    Required parameter: Example: 
*/
- (void) sendIntegerArrayAsyncWithIntegers:(NSArray*) integers
                completionBlock:(CompletedGetSendIntegerArray) onCompleted;

@end