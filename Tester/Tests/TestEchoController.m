/*
 * Tester
 *
 * This file was automatically generated for Stamplay by APIMATIC v2.0 on 06/16/2016
 */
#import <XCTest/XCTest.h>
#import "EchoController.h"
#import "TestHelper.h"
#import "TestBaseController.h"

@interface  TestEchoController : TestBaseController
//Controller instance for all tests
@property EchoController* controller;
@end 


@implementation  TestEchoController : TestBaseController

//Setup test class
//This method is called before the invocation of each test method in the test class
- (void)setUp {
	[super setUp];
	self.controller = [[EchoController alloc]init];
}

//Teardown test class
//This method is called after the invocation of each test method in the test class
- (void)tearDown {
	[super tearDown];
}	

     // Todo Add description for test testJsonEcho
    
-(void) testJsonEcho {
    //Set up test expectations
    XCTestExpectation *expectation =[self expectationWithDescription:@"High Expectations"];
        // Parameters for the API call
        NSObject* input = [NSJSONSerialization
                        JSONObjectWithData: [@"{\"uid\": \"1123213\", \"name\": \"Shahid\"}" dataUsingEncoding: NSUTF8StringEncoding]
                                   options: NSJSONReadingAllowFragments
                                     error: nil];

        // Set callback and perform API call
        [self.controller jsonEchoAsyncWithInput: input  completionBlock:^(BOOL success, HttpContext* context, id response, NSError* error) { 
       // Test response code
        XCTAssertEqual(200, context.response.statusCode);

        // Test whether the captured response is as we expected
        XCTAssertTrue(response!=nil);

		NSString* rawBody = [[NSString alloc] initWithData:context.response.rawBody encoding:NSUTF8StringEncoding];		
       XCTAssertTrue([TestHelper isJsonObjectProperSubsetOf:@"{\"body\": {\"uid\": \"1123213\", \"name\": \"Shahid\"}}" 
                rightObject: rawBody
                checkValues: true
                allowExtra: true
                isOrdered: false]);
        [expectation fulfill];
    }];
    [self wait];
}

     // Todo Add description for test testFormEcho
    
-(void) testFormEcho {
    //Set up test expectations
    XCTestExpectation *expectation =[self expectationWithDescription:@"High Expectations"];
        // Parameters for the API call
        NSObject* input = [NSJSONSerialization
                        JSONObjectWithData: [@"{\"uid\": \"1123213\", \"name\": \"Shahid\"}" dataUsingEncoding: NSUTF8StringEncoding]
                                   options: NSJSONReadingAllowFragments
                                     error: nil];

        // Set callback and perform API call
        [self.controller formEchoAsyncWithInput: input  completionBlock:^(BOOL success, HttpContext* context, id response, NSError* error) { 
       // Test response code
        XCTAssertEqual(200, context.response.statusCode);

        // Test whether the captured response is as we expected
        XCTAssertTrue(response!=nil);

		NSString* rawBody = [[NSString alloc] initWithData:context.response.rawBody encoding:NSUTF8StringEncoding];		
       XCTAssertTrue([TestHelper isJsonObjectProperSubsetOf:@"{\"body\":{\"input\":{\"uid\":\"1123213\",\"name\":\"Shahid\"}}}" 
                rightObject: rawBody
                checkValues: true
                allowExtra: true
                isOrdered: false]);
        [expectation fulfill];
    }];
    [self wait];
}

     // Todo Add description for test testQueryEcho
    
-(void) testQueryEcho {
    //Set up test expectations
    XCTestExpectation *expectation =[self expectationWithDescription:@"High Expectations"];
        // Dictionary for optional query parameters
        NSMutableDictionary* queryParamsMutable = [[NSMutableDictionary alloc] init];
        [queryParamsMutable setObject:@"world" forKey:@"hello"];
        NSDictionary *queryParams= [queryParamsMutable copy];

        // Set callback and perform API call
        [self.controller queryEchoWithQueryParameters: queryParams completionBlock:^(BOOL success, HttpContext* context, ServerResponse* response, NSError* error) { 
       // Test response code
        XCTAssertEqual(200, context.response.statusCode);

        // Test whether the captured response is as we expected
        XCTAssertTrue(response!=nil);

		NSString* rawBody = [[NSString alloc] initWithData:context.response.rawBody encoding:NSUTF8StringEncoding];		
       XCTAssertTrue([TestHelper isJsonObjectProperSubsetOf:@"{\"query\":{\"hello\":\"world\"}}" 
                rightObject: rawBody
                checkValues: true
                allowExtra: true
                isOrdered: false]);
        [expectation fulfill];
    }];
    [self wait];
}




@end
