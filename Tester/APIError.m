//
//  APIHelper.m
//  Tester
//
//  This file was automatically generated for Stamplay by APIMATIC v2.0 ( https://apimatic.io ) on 06/16/2016
//
#import "APIError.h"

@implementation APIError

/**
 * The HTTP response code from the API request
 */
@synthesize errorCode;

/**
 * The error message for the API calls
 */
@synthesize errorMessage;

/**
 * The error data for the API calls
 */
@synthesize errorData;

/**
 * Initialization
 * @param	reason	The reason for the error
 * @param	code	The HTTP response code from the API request
 * @param	data	The Raw HTTP response data from the API request
 */
- (APIError*) initWithReason: (NSString*) reason
                         andCode: (NSInteger) code
                         andData: (NSData*) data
{
    self = [super init];
    self.errorCode = code;
    self.errorMessage = reason;
    self.errorData = data;
    return self;
}

- (NSString*) description {

    if(errorMessage == nil){
        return [NSString stringWithFormat:@"Code: %zd Data: %@", self.errorCode, self.errorMessage];
    }else{
        //Show raw data as string
        NSString* message = [[NSString alloc] initWithData:self.errorData encoding:NSUTF8StringEncoding];
        return [NSString stringWithFormat:@"Code: %zd, Data: %@", self.errorCode, message];
    }
}

@end