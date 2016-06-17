//
//  EchoController.h
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

@interface EchoController : BaseController

/**
* Completion block definition for asynchronous call to Json echo */
typedef void (^CompletedPostJsonEcho)(BOOL success, HttpContext* context, id response, NSError* error);

/**
* Echo's back the request
* @param    input    Required parameter: Example: 
*/
- (void) jsonEchoAsyncWithInput:(NSObject*) input
                completionBlock:(CompletedPostJsonEcho) onCompleted;

/**
* Completion block definition for asynchronous call to Form Echo */
typedef void (^CompletedPostFormEcho)(BOOL success, HttpContext* context, id response, NSError* error);

/**
* Sends the request including any form params as JSON
* @param    input    Required parameter: Example: 
*/
- (void) formEchoAsyncWithInput:(NSObject*) input
                completionBlock:(CompletedPostFormEcho) onCompleted;

/**
* Completion block definition for asynchronous call to QueryEcho */
typedef void (^CompletedGetQueryEcho)(BOOL success, HttpContext* context, ServerResponse* response, NSError* error);

/**
* TODO: type endpoint description here
* @param    queryParameters    Additional optional query parameters are supported by this endpoint
*/
- (void) queryEchoWithQueryParameters:(NSDictionary*) queryParameters
                completionBlock:(CompletedGetQueryEcho) onCompleted;

@end