//
//  BodyParamsController.h
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
#import "Employee.h"
#import "Days.h"
#import "DaysHelper.h"
#import "SuiteCode.h"
#import "SuiteCodeHelper.h"

@interface BodyParamsController : BaseController

/**
* Completion block definition for asynchronous call to Send String Array */
typedef void (^CompletedPostSendStringArray)(BOOL success, HttpContext* context, ServerResponse* response, NSError* error);

/**
* sends a string body param
* @param    sarray    Required parameter: Example: 
*/
- (void) sendStringArrayAsyncWithSarray:(NSArray*) sarray
                completionBlock:(CompletedPostSendStringArray) onCompleted;

/**
* Completion block definition for asynchronous call to Send Integer Array */
typedef void (^CompletedPostSendIntegerArray)(BOOL success, HttpContext* context, ServerResponse* response, NSError* error);

/**
* TODO: type endpoint description here
* @param    integers    Required parameter: Example: 
*/
- (void) sendIntegerArrayAsyncWithIntegers:(NSArray*) integers
                completionBlock:(CompletedPostSendIntegerArray) onCompleted;

/**
* Completion block definition for asynchronous call to Send Model */
typedef void (^CompletedPostSendModel)(BOOL success, HttpContext* context, ServerResponse* response, NSError* error);

/**
* TODO: type endpoint description here
* @param    model    Required parameter: Example: 
*/
- (void) sendModelAsyncWithModel:(Employee*) model
                completionBlock:(CompletedPostSendModel) onCompleted;

/**
* Completion block definition for asynchronous call to Send Model Array */
typedef void (^CompletedPostSendModelArray)(BOOL success, HttpContext* context, ServerResponse* response, NSError* error);

/**
* TODO: type endpoint description here
* @param    models    Required parameter: Example: 
*/
- (void) sendModelArrayAsyncWithModels:(NSArray<Employee> *) models
                completionBlock:(CompletedPostSendModelArray) onCompleted;

/**
* Completion block definition for asynchronous call to Send Dynamic */
typedef void (^CompletedPostSendDynamic)(BOOL success, HttpContext* context, ServerResponse* response, NSError* error);

/**
* TODO: type endpoint description here
* @param    mdynamic    Required parameter: Example: 
*/
- (void) sendDynamicAsyncWithDynamic:(NSObject*) mdynamic
                completionBlock:(CompletedPostSendDynamic) onCompleted;

/**
* Completion block definition for asynchronous call to Send String */
typedef void (^CompletedPostSendString)(BOOL success, HttpContext* context, ServerResponse* response, NSError* error);

/**
* TODO: type endpoint description here
* @param    value    Required parameter: Example: 
*/
- (void) sendStringAsyncWithValue:(NSString*) value
                completionBlock:(CompletedPostSendString) onCompleted;

/**
* Completion block definition for asynchronous call to SendStringEnumArray */
typedef void (^CompletedPostSendStringEnumArray)(BOOL success, HttpContext* context, ServerResponse* response, NSError* error);

/**
* TODO: type endpoint description here
* @param    days    Required parameter: Example: 
*/
- (void) sendStringEnumArrayAsyncWithDays:(NSArray<NSNumber*>*) days
                completionBlock:(CompletedPostSendStringEnumArray) onCompleted;

/**
* Completion block definition for asynchronous call to SendIntegerEnumArray */
typedef void (^CompletedPostSendIntegerEnumArray)(BOOL success, HttpContext* context, ServerResponse* response, NSError* error);

/**
* TODO: type endpoint description here
* @param    suites    Required parameter: Example: 
*/
- (void) sendIntegerEnumArrayAsyncWithSuites:(NSArray<NSNumber*>*) suites
                completionBlock:(CompletedPostSendIntegerEnumArray) onCompleted;

@end