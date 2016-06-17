/*
 * Tester
 *
 * This file was automatically generated for Stamplay by APIMATIC v2.0 on 06/16/2016
 */
#import <XCTest/XCTest.h>
#import "HeaderController.h"
#import "TestHelper.h"
#import "TestBaseController.h"

@interface  TestHeaderController : TestBaseController
//Controller instance for all tests
@property HeaderController* controller;
@end 


@implementation  TestHeaderController : TestBaseController

//Setup test class
//This method is called before the invocation of each test method in the test class
- (void)setUp {
	[super setUp];
	self.controller = [[HeaderController alloc]init];
}

//Teardown test class
//This method is called after the invocation of each test method in the test class
- (void)tearDown {
	[super tearDown];
}	

     // Todo Add description for test testSendHeaders
    
-(void) testSendHeaders {
    //Set up test expectations
    XCTestExpectation *expectation =[self expectationWithDescription:@"High Expectations"];
        // Parameters for the API call
        NSString* customHeader = @"TestString";
        NSString* value = @"TestString";

        // Set callback and perform API call
        [self.controller sendHeadersAsyncWithCustomHeader: customHeader value : value  completionBlock:^(BOOL success, HttpContext* context, ServerResponse* response, NSError* error) { 
       // Test response code
        XCTAssertEqual(200, context.response.statusCode);

        // Test whether the captured response is as we expected
        XCTAssertTrue(response!=nil);

		NSString* rawBody = [[NSString alloc] initWithData:context.response.rawBody encoding:NSUTF8StringEncoding];		
       XCTAssertTrue([TestHelper isJsonObjectProperSubsetOf:@"{\"passed\":true}" 
                rightObject: rawBody
                checkValues: true
                allowExtra: true
                isOrdered: false]);
        [expectation fulfill];
    }];
    [self wait];
}




@end
