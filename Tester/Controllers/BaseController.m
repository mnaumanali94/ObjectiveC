//
//  HttpRequestFactory.m
//
//  Created by Zeeshan Ejaz Bhatti on 22/01/15.
//  Copyright (c) 2015 APIMatic. All rights reserved.
//

#import "BaseController.h"

@implementation BaseController

@synthesize clientInstance;

/**
 * Default initialization to use the UnirestClient
 */
-(id) init
{
    self = [super init];
    self.clientInstance = [[UnirestClient alloc] init];
    return self;
}

/**
 * Custom initialization to use the user specified IHttpClient
 */
-(id) initWithHttpClient: (id<IHttpClient>) client
{
    self = [super init];
    self.clientInstance = client;
    return self;
}

@end
