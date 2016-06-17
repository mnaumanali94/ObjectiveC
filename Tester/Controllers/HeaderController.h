//
//  HeaderController.h
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
#import "ServerResponse.h"

@interface HeaderController : BaseController

/**
* Completion block definition for asynchronous call to Send Headers */
typedef void (^CompletedPostSendHeaders)(BOOL success, HttpContext* context, ServerResponse* response, NSError* error);

/**
* Sends a single header params
* @param    customHeader    Required parameter: Example: 
* @param    value    Required parameter: Represents the value of the custom header
*/
- (void) sendHeadersAsyncWithCustomHeader:(NSString*) customHeader
                value:(NSString*) value
                completionBlock:(CompletedPostSendHeaders) onCompleted;

@end