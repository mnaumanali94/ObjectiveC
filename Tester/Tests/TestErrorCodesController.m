/*
 * Tester
 *
 * This file was automatically generated for Stamplay by APIMATIC v2.0 on 06/16/2016
 */
#import <XCTest/XCTest.h>
#import "ErrorCodesController.h"
#import "TestHelper.h"
#import "TestBaseController.h"

@interface  TestErrorCodesController : TestBaseController
//Controller instance for all tests
@property ErrorCodesController* controller;
@end 


@implementation  TestErrorCodesController : TestBaseController

//Setup test class
//This method is called before the invocation of each test method in the test class
- (void)setUp {
	[super setUp];
	self.controller = [[ErrorCodesController alloc]init];
}

//Teardown test class
//This method is called after the invocation of each test method in the test class
- (void)tearDown {
	[super tearDown];
}	

     // Todo Add description for test testGet400
    
-(void) testGet400 {
    //Set up test expectations
    XCTestExpectation *expectation =[self expectationWithDescription:@"High Expectations"];

        // Set callback and perform API call
        [self.controller get400WithCompletionBlock:  ^(BOOL success, HttpContext* context, id response, NSError* error) { 
       // Test response code
        XCTAssertEqual(400, context.response.statusCode);

        [expectation fulfill];
    }];
    [self wait];
}

     // Todo Add description for test testGet500
    
-(void) testGet500 {
    //Set up test expectations
    XCTestExpectation *expectation =[self expectationWithDescription:@"High Expectations"];

        // Set callback and perform API call
        [self.controller get500WithCompletionBlock:  ^(BOOL success, HttpContext* context, id response, NSError* error) { 
       // Test response code
        XCTAssertEqual(500, context.response.statusCode);

        [expectation fulfill];
    }];
    [self wait];
}




@end
