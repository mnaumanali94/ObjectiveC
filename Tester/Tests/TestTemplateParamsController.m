/*
 * Tester
 *
 * This file was automatically generated for Stamplay by APIMATIC v2.0 on 06/16/2016
 */
#import <XCTest/XCTest.h>
#import "TemplateParamsController.h"
#import "TestHelper.h"
#import "TestBaseController.h"

@interface  TestTemplateParamsController : TestBaseController
//Controller instance for all tests
@property TemplateParamsController* controller;
@end 


@implementation  TestTemplateParamsController : TestBaseController

//Setup test class
//This method is called before the invocation of each test method in the test class
- (void)setUp {
	[super setUp];
	self.controller = [[TemplateParamsController alloc]init];
}

//Teardown test class
//This method is called after the invocation of each test method in the test class
- (void)tearDown {
	[super tearDown];
}	

     // Todo Add description for test testSendStringArray
    
-(void) testSendStringArray {
    //Set up test expectations
    XCTestExpectation *expectation =[self expectationWithDescription:@"High Expectations"];
        // Parameters for the API call
        NSArray* strings = (NSArray*) [APIHelper jsonDeserializeArray: @"[\"abc\", \"def\"]"];

        // Set callback and perform API call
        [self.controller sendStringArrayAsyncWithStrings: strings  completionBlock:^(BOOL success, HttpContext* context, EchoResponse* response, NSError* error) { 
       // Test response code
        XCTAssertEqual(200, context.response.statusCode);

        // Test whether the captured response is as we expected
        XCTAssertTrue(response!=nil);

		NSString* rawBody = [[NSString alloc] initWithData:context.response.rawBody encoding:NSUTF8StringEncoding];		
       XCTAssertTrue([TestHelper isJsonObjectProperSubsetOf:@"{\"path\":\"/abc/def\"}" 
                rightObject: rawBody
                checkValues: true
                allowExtra: true
                isOrdered: false]);
        [expectation fulfill];
    }];
    [self wait];
}

     // Todo Add description for test testSendIntegerArray
    
-(void) testSendIntegerArray {
    //Set up test expectations
    XCTestExpectation *expectation =[self expectationWithDescription:@"High Expectations"];
        // Parameters for the API call
        NSArray* integers = (NSArray*) [APIHelper jsonDeserializeArray: @"[1,2,3,4,5]"];

        // Set callback and perform API call
        [self.controller sendIntegerArrayAsyncWithIntegers: integers  completionBlock:^(BOOL success, HttpContext* context, EchoResponse* response, NSError* error) { 
       // Test response code
        XCTAssertEqual(200, context.response.statusCode);

        // Test whether the captured response is as we expected
        XCTAssertTrue(response!=nil);

		NSString* rawBody = [[NSString alloc] initWithData:context.response.rawBody encoding:NSUTF8StringEncoding];		
       XCTAssertTrue([TestHelper isJsonObjectProperSubsetOf:@"{\"path\":\"/1/2/3/4/5\"}" 
                rightObject: rawBody
                checkValues: true
                allowExtra: true
                isOrdered: false]);
        [expectation fulfill];
    }];
    [self wait];
}




@end
