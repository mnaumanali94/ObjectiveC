/*
 * Tester
 *
 * This file was automatically generated for Stamplay by APIMATIC v2.0 on 06/16/2016
 */
#import <XCTest/XCTest.h>
#import "BodyParamsController.h"
#import "TestHelper.h"
#import "TestBaseController.h"

@interface  TestBodyParamsController : TestBaseController
//Controller instance for all tests
@property BodyParamsController* controller;
@end 


@implementation  TestBodyParamsController : TestBaseController

//Setup test class
//This method is called before the invocation of each test method in the test class
- (void)setUp {
	[super setUp];
	self.controller = [[BodyParamsController alloc]init];
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
        NSArray* sarray = (NSArray*) [APIHelper jsonDeserializeArray: @"[\"abc\", \"def\"]"];

        // Set callback and perform API call
        [self.controller sendStringArrayAsyncWithSarray: sarray  completionBlock:^(BOOL success, HttpContext* context, ServerResponse* response, NSError* error) { 
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

     // Todo Add description for test testSendIntegerArray
    
-(void) testSendIntegerArray {
    //Set up test expectations
    XCTestExpectation *expectation =[self expectationWithDescription:@"High Expectations"];
        // Parameters for the API call
        NSArray* integers = (NSArray*) [APIHelper jsonDeserializeArray: @"[1,2,3,4,5]"];

        // Set callback and perform API call
        [self.controller sendIntegerArrayAsyncWithIntegers: integers  completionBlock:^(BOOL success, HttpContext* context, ServerResponse* response, NSError* error) { 
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

     // Todo Add description for test testSendModel
    
-(void) testSendModel {
    //Set up test expectations
    XCTestExpectation *expectation =[self expectationWithDescription:@"High Expectations"];
        // Parameters for the API call
        Employee* model = (Employee*) [APIHelper jsonDeserialize: @"{\"name\":\"Shahid Khaliq\",\"age\":5147483645,\"address\":\"H # 531, S # 20\",\"uid\":\"123321\",\"salary\":20000,\"department\":\"Software Development\",\"joiningDay\":\"Saturday\",\"workingDays\":[\"Monday\",\"Tuesday\",\"Friday\"],\"boss\":{\"name\":\"Zeeshan Ejaz\",\"age\":5147483647,\"address\":\"I-9/1\",\"uid\":\"241123\"},\"dependents\":[{\"name\":\"Future Wife\",\"age\":5147483649,\"address\":\"H # 531, S # 20\",\"uid\":\"123412\"},{\"name\":\"Future Kid\",\"age\":5147483648,\"address\":\"H # 531, S # 20\",\"uid\":\"312341\"}]}"
                toClass: Employee.class];

        // Set callback and perform API call
        [self.controller sendModelAsyncWithModel: model  completionBlock:^(BOOL success, HttpContext* context, ServerResponse* response, NSError* error) { 
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

     // Todo Add description for test testSendModelArray
    
-(void) testSendModelArray {
    //Set up test expectations
    XCTestExpectation *expectation =[self expectationWithDescription:@"High Expectations"];
        // Parameters for the API call
        NSArray<Employee> * models = (NSArray<Employee>*) [Employee arrayOfModelsFromDictionaries:
                [APIHelper jsonDeserializeArray: @"[{\"name\":\"Shahid Khaliq\",\"age\":5147483645,\"address\":\"H # 531, S # 20\",\"uid\":\"123321\",\"salary\":20000,\"department\":\"Software Development\",\"joiningDay\":\"Saturday\",\"workingDays\":[\"Monday\",\"Tuesday\",\"Friday\"],\"boss\":{\"name\":\"Zeeshan Ejaz\",\"age\":5147483647,\"address\":\"I-9/1\",\"uid\":\"241123\"},\"dependents\":[{\"name\":\"Future Wife\",\"age\":5147483649,\"address\":\"H # 531, S # 20\",\"uid\":\"123412\"},{\"name\":\"Future Kid\",\"age\":5147483648,\"address\":\"H # 531, S # 20\",\"uid\":\"312341\"}]}, {\"name\":\"Shahid Khaliq\",\"age\":5147483645,\"address\":\"H # 531, S # 20\",\"uid\":\"123321\",\"salary\":20000,\"department\":\"Software Development\",\"joiningDay\":\"Saturday\",\"workingDays\":[\"Monday\",\"Tuesday\",\"Friday\"],\"boss\":{\"name\":\"Zeeshan Ejaz\",\"age\":5147483647,\"address\":\"I-9/1\",\"uid\":\"241123\"},\"dependents\":[{\"name\":\"Future Wife\",\"age\":5147483649,\"address\":\"H # 531, S # 20\",\"uid\":\"123412\"},{\"name\":\"Future Kid\",\"age\":5147483648,\"address\":\"H # 531, S # 20\",\"uid\":\"312341\"}]}]"] error: nil];

        // Set callback and perform API call
        [self.controller sendModelArrayAsyncWithModels: models  completionBlock:^(BOOL success, HttpContext* context, ServerResponse* response, NSError* error) { 
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

     // Todo Add description for test testSendDynamic
    
-(void) testSendDynamic {
    //Set up test expectations
    XCTestExpectation *expectation =[self expectationWithDescription:@"High Expectations"];
        // Parameters for the API call
        NSObject* mdynamic = [NSJSONSerialization
                        JSONObjectWithData: [@"{\"uid\": \"1123213\", \"name\": \"Shahid\"}" dataUsingEncoding: NSUTF8StringEncoding]
                                   options: NSJSONReadingAllowFragments
                                     error: nil];

        // Set callback and perform API call
        [self.controller sendDynamicAsyncWithDynamic: mdynamic  completionBlock:^(BOOL success, HttpContext* context, ServerResponse* response, NSError* error) { 
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

     // Todo Add description for test testSendStringEnumArray
    
-(void) testSendStringEnumArray {
    //Set up test expectations
    XCTestExpectation *expectation =[self expectationWithDescription:@"High Expectations"];
        // Parameters for the API call
        NSArray<NSNumber*>* days = [DaysHelper daysArrayFromStringArray:
                [APIHelper jsonDeserializeArray: @"[\"Tuesday\", \"Saturday\", \"Wednesday\", \"Monday\", \"Sunday\"]"]];

        // Set callback and perform API call
        [self.controller sendStringEnumArrayAsyncWithDays: days  completionBlock:^(BOOL success, HttpContext* context, ServerResponse* response, NSError* error) { 
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

     // Todo Add description for test testSendIntegerEnumArray
    
-(void) testSendIntegerEnumArray {
    //Set up test expectations
    XCTestExpectation *expectation =[self expectationWithDescription:@"High Expectations"];
        // Parameters for the API call
        NSArray<NSNumber*>* suites =  (NSArray<NSNumber*>*) [APIHelper jsonDeserializeArray: @"[1, 3, 4, 2, 3]"];

        // Set callback and perform API call
        [self.controller sendIntegerEnumArrayAsyncWithSuites: suites  completionBlock:^(BOOL success, HttpContext* context, ServerResponse* response, NSError* error) { 
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
