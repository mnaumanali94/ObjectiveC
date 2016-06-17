//
//  UnirestClient.h
//
//  Created by Zeeshan Ejaz Bhatti on 24/01/15.
//  Copyright (c) 2015 APIMatic. All rights reserved.
//
#ifndef UNIRESTCLIENT
#define UNIRESTCLIENT

#import "IHttpClient.h"
#import "HttpRequest.h"
#import "HttpBodyRequest.h"
#import "HttpResponse.h"
#import "HttpStringResponse.h"
#import "UNIHTTPRequestWithBody.h"

@interface UnirestClient : NSObject<IHttpClient>

/**
 * The shared singleton instance
 */
+(instancetype) sharedClient;

/**
 * Execute a given HttpRequest to get string response back
 * @param   request     The given HttpRequest to execute
 * @param   success     The success code block to handle success
 * @param   failure     The failure code block to handle failure
 */
-(void) executeAsString: (HttpRequest*) request
                success: (OnSuccess) successBlock
                failure: (OnFailure) failureBlock;

/**
 * Execute a given HttpRequest to get binary response back
 * @param   request     The given HttpRequest to execute
 * @param   success     The success code block to handle success
 * @param   failure     The failure code block to handle failure
 */
-(void) executeAsBinary: (HttpRequest*) request
                success: (OnSuccess) successBlock
                failure: (OnFailure) failureBlock;

/**
 * Create a simple HTTP GET request
 */
-(HttpRequest*) get:(HttpRequestBlock) config;

/**
 * Create an HTTP POST request with parameters
 */
-(HttpRequest*) post:(HttpRequestBlock) config;

/**
 * Create an HTTP POST request with body
 */
-(HttpBodyRequest*) postBody:(HttpBodyRequestBlock) config;

/**
 * Create an HTTP PUT request with parameters
 */
-(HttpRequest*) put:(HttpRequestBlock) config;

/**
 * Create an HTTP PUT request with body
 */
-(HttpBodyRequest*) putBody:(HttpBodyRequestBlock) config;

/**
 * Create an HTTP PATCH request with parameters
 */
-(HttpRequest*) patch:(HttpRequestBlock) config;

/**
 * Create an HTTP PATCH request with body
 */
-(HttpBodyRequest*) patchBody:(HttpBodyRequestBlock) config;

/**
 * Create an HTTP DELETE request with parameters
 */
-(HttpRequest*) delete:(HttpRequestBlock) config;

/**
 * Create an HTTP DELETE request with body
 */
-(HttpBodyRequest*) deleteBody:(HttpBodyRequestBlock) config;

@end

#endif