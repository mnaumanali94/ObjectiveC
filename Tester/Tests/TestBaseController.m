/*
 * Tester
 *
 * This file was automatically generated for Stamplay by APIMATIC v2.0 on 06/16/2016
 */
#import <XCTest/XCTest.h>
#import "TestHelper.h"
#import "Configuration.h"
#import "TestBaseController.h"

@implementation  TestBaseController : XCTestCase
static const double assertPrecision = 0.1;
static const NSTimeInterval timeOut = 60;
//Setup test class
//This method is called before the invocation of each test method in the test class
- (void)setUp {
	[super setUp];
    
    //Set Configuration parameters for test execution
  Configuration_BaseUri = @"http://api-tester.azurewebsites.net";

}

//Teardown test class
//This method is called after the invocation of each test method in the test class
- (void)tearDown {
	[super tearDown];
}

- (void) wait{
    [self waitForExpectationsWithTimeout:[TestBaseController timeOut] handler:^(NSError *error) {
        if (error) {
            NSLog(@"Timeout Error: %@", error);
        }
    }];
}

+ (double)assertPrecision
{
    return assertPrecision;
}

+ (NSTimeInterval)timeOut
{
    return timeOut;
}

@end
