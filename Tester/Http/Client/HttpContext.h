//
//  HttpContext.h
//  A DTO that encapsulates the HTTP request and response. 
//
//  Created by Kartik Andalam on 8/31/15.
//  Copyright (c) 2015 APIMatic. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "HttpRequest.h"
#import "HttpResponse.h"
@interface HttpContext : NSObject

@property HttpRequest* request;
@property HttpResponse* response;

@end
