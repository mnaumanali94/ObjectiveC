/*
 * Tester
 *
 * This file was automatically generated for Stamplay by APIMATIC v2.0 on 06/16/2016
 */
#import <XCTest/XCTest.h>
#import "ResponseTypesController.h"
#import "TestHelper.h"
#import "TestBaseController.h"

@interface  TestResponseTypesController : TestBaseController
//Controller instance for all tests
@property ResponseTypesController* controller;
@end 


@implementation  TestResponseTypesController : TestBaseController

//Setup test class
//This method is called before the invocation of each test method in the test class
- (void)setUp {
	[super setUp];
	self.controller = [[ResponseTypesController alloc]init];
}

//Teardown test class
//This method is called after the invocation of each test method in the test class
- (void)tearDown {
	[super tearDown];
}	

     // Todo Add description for test testGetLong
    
-(void) testGetLong {
    //Set up test expectations
    XCTestExpectation *expectation =[self expectationWithDescription:@"High Expectations"];

        // Set callback and perform API call
        [self.controller getLongWithCompletionBlock:  ^(BOOL success, HttpContext* context, NSNumber* response, NSError* error) { 
       // Test response code
        XCTAssertEqual(200, context.response.statusCode);

        // Test whether the captured response is as we expected
        XCTAssertTrue(response!=nil);

 
                XCTAssertEqualObjects(@5147483647, response);
                [expectation fulfill];
    }];
    [self wait];
}

     // Todo Add description for test testGetModel
    
-(void) testGetModel {
    //Set up test expectations
    XCTestExpectation *expectation =[self expectationWithDescription:@"High Expectations"];

        // Set callback and perform API call
        [self.controller getModelWithCompletionBlock:  ^(BOOL success, HttpContext* context, Employee* response, NSError* error) { 
       // Test response code
        XCTAssertEqual(200, context.response.statusCode);

        // Test whether the captured response is as we expected
        XCTAssertTrue(response!=nil);

		NSString* rawBody = [[NSString alloc] initWithData:context.response.rawBody encoding:NSUTF8StringEncoding];		
       XCTAssertTrue([TestHelper isJsonObjectProperSubsetOf:@"{\"name\":\"Shahid Khaliq\",\"age\":5147483645,\"address\":\"H # 531, S # 20\",\"uid\":\"123321\",\"salary\":20000,\"department\":\"Software Development\",\"joiningDay\":\"Saturday\",\"workingDays\":[\"Monday\",\"Tuesday\",\"Friday\"],\"boss\":{\"name\":\"Zeeshan Ejaz\",\"age\":5147483647,\"address\":\"I-9/1\",\"uid\":\"241123\"},\"dependents\":[{\"name\":\"Future Wife\",\"age\":5147483649,\"address\":\"H # 531, S # 20\",\"uid\":\"123412\"},{\"name\":\"Future Kid\",\"age\":5147483648,\"address\":\"H # 531, S # 20\",\"uid\":\"312341\"}]}" 
                rightObject: rawBody
                checkValues: true
                allowExtra: true
                isOrdered: false]);
        [expectation fulfill];
    }];
    [self wait];
}

     // Todo Add description for test testGetStringEnumArray
    
-(void) testGetStringEnumArray {
    //Set up test expectations
    XCTestExpectation *expectation =[self expectationWithDescription:@"High Expectations"];

        // Set callback and perform API call
        [self.controller getStringEnumArrayWithCompletionBlock:  ^(BOOL success, HttpContext* context, NSArray<NSNumber*>* response, NSError* error) { 
       // Test response code
        XCTAssertEqual(200, context.response.statusCode);

        // Test whether the captured response is as we expected
        XCTAssertTrue(response!=nil);

        // Deserialize expected output
        NSArray<NSNumber*>* expected = [DaysHelper daysArrayFromStringArray:
                [APIHelper jsonDeserializeArray: @"[\"Tuesday\", \"Saturday\", \"Wednesday\", \"Monday\", \"Sunday\"]"]];

        NSSet* ExpectedSet = [NSSet setWithArray:expected];
        NSSet* ResultSet = [NSSet setWithArray:response];
        XCTAssertTrue([ExpectedSet isSubsetOfSet:ResultSet]);
        [expectation fulfill];
    }];
    [self wait];
}

     // Todo Add description for test testGetStringEnum
    
-(void) testGetStringEnum {
    //Set up test expectations
    XCTestExpectation *expectation =[self expectationWithDescription:@"High Expectations"];

        // Set callback and perform API call
        [self.controller getStringEnumWithCompletionBlock:  ^(BOOL success, HttpContext* context, enum Days response, NSError* error) { 
       // Test response code
        XCTAssertEqual(200, context.response.statusCode);

        // Test whether the captured response is as we expected
        XCTAssertTrue(response!=nil);

 
                XCTAssertEqual((enum Days) [DaysHelper daysFromString: @"Monday"], response);
	            [expectation fulfill];
    }];
    [self wait];
}

     // Todo Add description for test testGetModelArray
    
-(void) testGetModelArray {
    //Set up test expectations
    XCTestExpectation *expectation =[self expectationWithDescription:@"High Expectations"];

        // Set callback and perform API call
        [self.controller getModelArrayWithCompletionBlock:  ^(BOOL success, HttpContext* context, NSArray<Employee> * response, NSError* error) { 
       // Test response code
        XCTAssertEqual(200, context.response.statusCode);

        // Test whether the captured response is as we expected
        XCTAssertTrue(response!=nil);

		NSString* rawBody = [[NSString alloc] initWithData:context.response.rawBody encoding:NSUTF8StringEncoding];		
        XCTAssertTrue([TestHelper isArrayOfJsonObjectsProperSubsetOf: @"[{\"name\":\"Shahid Khaliq\",\"age\":5147483645,\"address\":\"H # 531, S # 20\",\"uid\":\"123321\",\"salary\":20000,\"department\":\"Software Development\",\"joiningDay\":\"Saturday\",\"workingDays\":[\"Monday\",\"Tuesday\",\"Friday\"],\"boss\":{\"name\":\"Zeeshan Ejaz\",\"age\":5147483647,\"address\":\"I-9/1\",\"uid\":\"241123\"},\"dependents\":[{\"name\":\"Future Wife\",\"age\":5147483649,\"address\":\"H # 531, S # 20\",\"uid\":\"123412\"},{\"name\":\"Future Kid\",\"age\":5147483648,\"address\":\"H # 531, S # 20\",\"uid\":\"312341\"}]}, {\"name\":\"Shahid Khaliq\",\"age\":5147483645,\"address\":\"H # 531, S # 20\",\"uid\":\"123321\",\"salary\":20000,\"department\":\"Software Development\",\"joiningDay\":\"Saturday\",\"workingDays\":[\"Monday\",\"Tuesday\",\"Friday\"],\"boss\":{\"name\":\"Zeeshan Ejaz\",\"age\":5147483647,\"address\":\"I-9/1\",\"uid\":\"241123\"},\"dependents\":[{\"name\":\"Future Wife\",\"age\":5147483649,\"address\":\"H # 531, S # 20\",\"uid\":\"123412\"},{\"name\":\"Future Kid\",\"age\":5147483648,\"address\":\"H # 531, S # 20\",\"uid\":\"312341\"}]}]"
                rightObject: rawBody
                checkValues: true
                allowExtra: true
                isOrdered: false]);
        [expectation fulfill];
    }];
    [self wait];
}

     // Todo Add description for test testGetIntEnum
    
-(void) testGetIntEnum {
    //Set up test expectations
    XCTestExpectation *expectation =[self expectationWithDescription:@"High Expectations"];

        // Set callback and perform API call
        [self.controller getIntEnumWithCompletionBlock:  ^(BOOL success, HttpContext* context, enum SuiteCode response, NSError* error) { 
       // Test response code
        XCTAssertEqual(200, context.response.statusCode);

        // Test whether the captured response is as we expected
        XCTAssertTrue(response!=NULL);

 
                XCTAssertEqual((enum SuiteCode) [SuiteCodeHelper suiteCodeFromString: @"3"], response);
	            [expectation fulfill];
    }];
    [self wait];
}

     // Todo Add description for test testGetIntEnumArray
    
-(void) testGetIntEnumArray {
    //Set up test expectations
    XCTestExpectation *expectation =[self expectationWithDescription:@"High Expectations"];

        // Set callback and perform API call
        [self.controller getIntEnumArrayWithCompletionBlock:  ^(BOOL success, HttpContext* context, NSArray<NSNumber*>* response, NSError* error) { 
       // Test response code
        XCTAssertEqual(200, context.response.statusCode);

        // Test whether the captured response is as we expected
        XCTAssertTrue(response!=nil);

        // Deserialize expected output
        NSArray<NSNumber*>* expected =  (NSArray<NSNumber*>*) [APIHelper jsonDeserializeArray: @"[1, 3, 4, 2, 3]"];

        NSSet* ExpectedSet = [NSSet setWithArray:expected];
        NSSet* ResultSet = [NSSet setWithArray:response];
        XCTAssertTrue([ExpectedSet isSubsetOfSet:ResultSet]);
        [expectation fulfill];
    }];
    [self wait];
}

     // Todo Add description for test testGetPrecision
    
-(void) testGetPrecision {
    //Set up test expectations
    XCTestExpectation *expectation =[self expectationWithDescription:@"High Expectations"];

        // Set callback and perform API call
        [self.controller getPrecisionWithCompletionBlock:  ^(BOOL success, HttpContext* context, NSNumber* response, NSError* error) { 
       // Test response code
        XCTAssertEqual(200, context.response.statusCode);

        // Test whether the captured response is as we expected
        XCTAssertTrue(response!=nil);

 
                XCTAssertEqualWithAccuracy(4.999, [response doubleValue], [TestBaseController assertPrecision]);
                [expectation fulfill];
    }];
    [self wait];
}

     // Todo Add description for test testGetBinary
    
-(void) testGetBinary {
    //Set up test expectations
    XCTestExpectation *expectation =[self expectationWithDescription:@"High Expectations"];

        // Set callback and perform API call
        [self.controller getBinaryWithCompletionBlock:  ^(BOOL success, HttpContext* context, NSData* response, NSError* error) { 
       // Test response code
        XCTAssertEqual(200, context.response.statusCode);

        // Test whether the captured response is as we expected
        XCTAssertTrue(response!=nil);
        XCTAssertTrue([[NSData dataWithContentsOfURL:[NSURL URLWithString:@"https://doc-0c-6k-docs.googleusercontent.com/docs/securesc/ha0ro937gcuc7l7deffksulhg5h7mbp1/36nj82cco8n91vi5ri0tv0pmll1j7m6d/1466488800000/11635444525882686240/*/0B8oIayVcw9VgZS1xQy04YTcwMmc?e=download"]] isEqualToData:response]);
        [expectation fulfill];
    }];
    [self wait];
}

     // Todo Add description for test testGetInteger
    
-(void) testGetInteger {
    //Set up test expectations
    XCTestExpectation *expectation =[self expectationWithDescription:@"High Expectations"];

        // Set callback and perform API call
        [self.controller getIntegerWithCompletionBlock:  ^(BOOL success, HttpContext* context, NSNumber* response, NSError* error) { 
       // Test response code
        XCTAssertEqual(200, context.response.statusCode);

        // Test whether the captured response is as we expected
        XCTAssertTrue(response!=nil);

 
                XCTAssertEqualObjects(@4, response);
                [expectation fulfill];
    }];
    [self wait];
}

     // Todo Add description for test testGetIntegerArray
    
-(void) testGetIntegerArray {
    //Set up test expectations
    XCTestExpectation *expectation =[self expectationWithDescription:@"High Expectations"];

        // Set callback and perform API call
        [self.controller getIntegerArrayWithCompletionBlock:  ^(BOOL success, HttpContext* context, NSArray* response, NSError* error) { 
       // Test response code
        XCTAssertEqual(200, context.response.statusCode);

        // Test whether the captured response is as we expected
        XCTAssertTrue(response!=nil);

        // Deserialize expected output
        NSArray* expected = (NSArray*) [APIHelper jsonDeserializeArray: @"[1,2,3,4,5]"];

        NSSet* ExpectedSet = [NSSet setWithArray:expected];
        NSSet* ResultSet = [NSSet setWithArray:response];
        XCTAssertTrue([ExpectedSet isSubsetOfSet:ResultSet]);
        [expectation fulfill];
    }];
    [self wait];
}

     // Todo Add description for test testGetDynamic
    
-(void) testGetDynamic {
    //Set up test expectations
    XCTestExpectation *expectation =[self expectationWithDescription:@"High Expectations"];

        // Set callback and perform API call
        [self.controller getDynamicWithCompletionBlock:  ^(BOOL success, HttpContext* context, id response, NSError* error) { 
       // Test response code
        XCTAssertEqual(200, context.response.statusCode);

        // Test whether the captured response is as we expected
        XCTAssertTrue(response!=nil);

		NSString* rawBody = [[NSString alloc] initWithData:context.response.rawBody encoding:NSUTF8StringEncoding];		
       XCTAssertTrue([TestHelper isJsonObjectProperSubsetOf:@"{\"method\":\"GET\",\"body\":{},\"uploadCount\":0}" 
                rightObject: rawBody
                checkValues: true
                allowExtra: true
                isOrdered: false]);
        [expectation fulfill];
    }];
    [self wait];
}

     // Todo Add description for test testGetDynamicArray
    
-(void) testGetDynamicArray {
    //Set up test expectations
    XCTestExpectation *expectation =[self expectationWithDescription:@"High Expectations"];

        // Set callback and perform API call
        [self.controller getDynamicArrayWithCompletionBlock:  ^(BOOL success, HttpContext* context, id response, NSError* error) { 
       // Test response code
        XCTAssertEqual(200, context.response.statusCode);

        // Test whether the captured response is as we expected
        XCTAssertTrue(response!=nil);

		NSString* rawBody = [[NSString alloc] initWithData:context.response.rawBody encoding:NSUTF8StringEncoding];		
       XCTAssertTrue([TestHelper isJsonObjectProperSubsetOf:@"{\"method\":\"GET\",\"body\":{},\"uploadCount\":0, \"query\":{\"array\":\"1\"}}" 
                rightObject: rawBody
                checkValues: true
                allowExtra: true
                isOrdered: false]);
        [expectation fulfill];
    }];
    [self wait];
}

     // Todo Add description for test testGetDatetime
    
-(void) testGetDatetime {
    //Set up test expectations
    XCTestExpectation *expectation =[self expectationWithDescription:@"High Expectations"];

        // Set callback and perform API call
        [self.controller getDatetimeWithCompletionBlock:  ^(BOOL success, HttpContext* context, NSDate* response, NSError* error) { 
       // Test response code
        XCTAssertEqual(200, context.response.statusCode);

        // Test whether the captured response is as we expected
        XCTAssertTrue(response!=nil);

 
                XCTAssertEqualObjects([NSDate NSDateFromNSString: @"2016-03-13T19:52:32.123Z"], response);
                [expectation fulfill];
    }];
    [self wait];
}

     // Todo Add description for test testGetDatetimeArray
    
-(void) testGetDatetimeArray {
    //Set up test expectations
    XCTestExpectation *expectation =[self expectationWithDescription:@"High Expectations"];

        // Set callback and perform API call
        [self.controller getDatetimeArrayWithCompletionBlock:  ^(BOOL success, HttpContext* context, NSArray* response, NSError* error) { 
       // Test response code
        XCTAssertEqual(200, context.response.statusCode);

        // Test whether the captured response is as we expected
        XCTAssertTrue(response!=nil);

        // Deserialize expected output
        NSArray* expected = (NSArray*) [APIHelper jsonDeserializeArray: @"[\"2016-03-13T19:52:32.123Z\",\"2016-03-13T19:52:32.123Z\",\"2016-03-13T19:52:32.123Z\"]"];

        NSSet* ExpectedSet = [NSSet setWithArray:expected];
        NSSet* ResultSet = [NSSet setWithArray:response];
        XCTAssertTrue([ExpectedSet isSubsetOfSet:ResultSet]);
        [expectation fulfill];
    }];
    [self wait];
}

     // Todo Add description for test testGetBoolean
    
-(void) testGetBoolean {
    //Set up test expectations
    XCTestExpectation *expectation =[self expectationWithDescription:@"High Expectations"];

        // Set callback and perform API call
        [self.controller getBooleanWithCompletionBlock:  ^(BOOL success, HttpContext* context, NSNumber* response, NSError* error) { 
       // Test response code
        XCTAssertEqual(200, context.response.statusCode);

        // Test whether the captured response is as we expected
        XCTAssertTrue(response!=nil);

 
                XCTAssertEqualObjects(@YES, response);
                [expectation fulfill];
    }];
    [self wait];
}

     // Todo Add description for test testGetBooleanArray
    
-(void) testGetBooleanArray {
    //Set up test expectations
    XCTestExpectation *expectation =[self expectationWithDescription:@"High Expectations"];

        // Set callback and perform API call
        [self.controller getBooleanArrayWithCompletionBlock:  ^(BOOL success, HttpContext* context, NSArray* response, NSError* error) { 
       // Test response code
        XCTAssertEqual(200, context.response.statusCode);

        // Test whether the captured response is as we expected
        XCTAssertTrue(response!=nil);

        // Deserialize expected output
        NSArray* expected = (NSArray*) [APIHelper jsonDeserializeArray: @"[true, false, true, true, false]"];

        NSSet* ExpectedSet = [NSSet setWithArray:expected];
        NSSet* ResultSet = [NSSet setWithArray:response];
        XCTAssertTrue([ExpectedSet isSubsetOfSet:ResultSet]);
        [expectation fulfill];
    }];
    [self wait];
}




@end
