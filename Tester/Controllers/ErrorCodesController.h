//
//  ErrorCodesController.h
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

@interface ErrorCodesController : BaseController

/**
* Completion block definition for asynchronous call to Get400 */
typedef void (^CompletedGet400)(BOOL success, HttpContext* context, id response, NSError* error);

/**
* TODO: type endpoint description here
*/
- (void) get400WithCompletionBlock:(CompletedGet400) onCompleted;

/**
* Completion block definition for asynchronous call to Get500 */
typedef void (^CompletedGet500)(BOOL success, HttpContext* context, id response, NSError* error);

/**
* TODO: type endpoint description here
*/
- (void) get500WithCompletionBlock:(CompletedGet500) onCompleted;

@end