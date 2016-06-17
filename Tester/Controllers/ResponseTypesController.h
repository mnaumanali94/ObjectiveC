//
//  ResponseTypesController.h
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
#import "NSDate+extension.h"
#import "Employee.h"
#import "Days.h"
#import "DaysHelper.h"
#import "SuiteCode.h"
#import "SuiteCodeHelper.h"

@interface ResponseTypesController : BaseController

/**
* Completion block definition for asynchronous call to Get Long */
typedef void (^CompletedGetLong)(BOOL success, HttpContext* context, NSNumber* response, NSError* error);

/**
* TODO: type endpoint description here
*/
- (void) getLongWithCompletionBlock:(CompletedGetLong) onCompleted;

/**
* Completion block definition for asynchronous call to Get Model */
typedef void (^CompletedGetModel)(BOOL success, HttpContext* context, Employee* response, NSError* error);

/**
* TODO: type endpoint description here
*/
- (void) getModelWithCompletionBlock:(CompletedGetModel) onCompleted;

/**
* Completion block definition for asynchronous call to Get String Enum Array */
typedef void (^CompletedGetStringEnumArray)(BOOL success, HttpContext* context, NSArray<NSNumber*>* response, NSError* error);

/**
* TODO: type endpoint description here
*/
- (void) getStringEnumArrayWithCompletionBlock:(CompletedGetStringEnumArray) onCompleted;

/**
* Completion block definition for asynchronous call to Get String Enum */
typedef void (^CompletedGetStringEnum)(BOOL success, HttpContext* context, enum Days response, NSError* error);

/**
* TODO: type endpoint description here
*/
- (void) getStringEnumWithCompletionBlock:(CompletedGetStringEnum) onCompleted;

/**
* Completion block definition for asynchronous call to Get Model Array */
typedef void (^CompletedGetModelArray)(BOOL success, HttpContext* context, NSArray<Employee> * response, NSError* error);

/**
* TODO: type endpoint description here
*/
- (void) getModelArrayWithCompletionBlock:(CompletedGetModelArray) onCompleted;

/**
* Completion block definition for asynchronous call to Get Int Enum */
typedef void (^CompletedGetIntEnum)(BOOL success, HttpContext* context, enum SuiteCode response, NSError* error);

/**
* TODO: type endpoint description here
*/
- (void) getIntEnumWithCompletionBlock:(CompletedGetIntEnum) onCompleted;

/**
* Completion block definition for asynchronous call to Get Int Enum Array */
typedef void (^CompletedGetIntEnumArray)(BOOL success, HttpContext* context, NSArray<NSNumber*>* response, NSError* error);

/**
* TODO: type endpoint description here
*/
- (void) getIntEnumArrayWithCompletionBlock:(CompletedGetIntEnumArray) onCompleted;

/**
* Completion block definition for asynchronous call to Get Precision */
typedef void (^CompletedGetPrecision)(BOOL success, HttpContext* context, NSNumber* response, NSError* error);

/**
* TODO: type endpoint description here
*/
- (void) getPrecisionWithCompletionBlock:(CompletedGetPrecision) onCompleted;

/**
* Completion block definition for asynchronous call to Get Binary */
typedef void (^CompletedGetBinary)(BOOL success, HttpContext* context, NSData* response, NSError* error);

/**
* gets a binary object
*/
- (void) getBinaryWithCompletionBlock:(CompletedGetBinary) onCompleted;

/**
* Completion block definition for asynchronous call to Get Integer */
typedef void (^CompletedGetInteger)(BOOL success, HttpContext* context, NSNumber* response, NSError* error);

/**
* Gets a integer response
*/
- (void) getIntegerWithCompletionBlock:(CompletedGetInteger) onCompleted;

/**
* Completion block definition for asynchronous call to Get Integer Array */
typedef void (^CompletedGetIntegerArray)(BOOL success, HttpContext* context, NSArray* response, NSError* error);

/**
* Get an array of integers.
*/
- (void) getIntegerArrayWithCompletionBlock:(CompletedGetIntegerArray) onCompleted;

/**
* Completion block definition for asynchronous call to Get Dynamic */
typedef void (^CompletedGetDynamic)(BOOL success, HttpContext* context, id response, NSError* error);

/**
* TODO: type endpoint description here
*/
- (void) getDynamicWithCompletionBlock:(CompletedGetDynamic) onCompleted;

/**
* Completion block definition for asynchronous call to Get Dynamic Array */
typedef void (^CompletedGetDynamicArray)(BOOL success, HttpContext* context, id response, NSError* error);

/**
* TODO: type endpoint description here
*/
- (void) getDynamicArrayWithCompletionBlock:(CompletedGetDynamicArray) onCompleted;

/**
* Completion block definition for asynchronous call to Get Datetime */
typedef void (^CompletedGetDatetime)(BOOL success, HttpContext* context, NSDate* response, NSError* error);

/**
* TODO: type endpoint description here
*/
- (void) getDatetimeWithCompletionBlock:(CompletedGetDatetime) onCompleted;

/**
* Completion block definition for asynchronous call to Get Datetime Array */
typedef void (^CompletedGetDatetimeArray)(BOOL success, HttpContext* context, NSArray* response, NSError* error);

/**
* TODO: type endpoint description here
*/
- (void) getDatetimeArrayWithCompletionBlock:(CompletedGetDatetimeArray) onCompleted;

/**
* Completion block definition for asynchronous call to Get Boolean */
typedef void (^CompletedGetBoolean)(BOOL success, HttpContext* context, NSNumber* response, NSError* error);

/**
* TODO: type endpoint description here
*/
- (void) getBooleanWithCompletionBlock:(CompletedGetBoolean) onCompleted;

/**
* Completion block definition for asynchronous call to Get Boolean Array */
typedef void (^CompletedGetBooleanArray)(BOOL success, HttpContext* context, NSArray* response, NSError* error);

/**
* TODO: type endpoint description here
*/
- (void) getBooleanArrayWithCompletionBlock:(CompletedGetBooleanArray) onCompleted;

@end