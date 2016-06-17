/*
 * Tester
 *
 * This file was automatically generated for Stamplay by APIMATIC v2.0 on 06/16/2016
 */
#import <Foundation/Foundation.h>
#import "APIHelper.h"
#import "NSDate+extension.h"


@interface TestHelper : NSObject


@property NSMutableData * mdata; // in .h file
+(void) saveFile:(NSString*)string;

+(BOOL) isProperSubsetOf: (NSDictionary*) leftTree
               rightTree:(NSDictionary*) rightTree
            checkValues: (BOOL) checkValues
              allowExtra: (BOOL) allowExtra
               isOrdered: (BOOL) isOrdered;

+(BOOL) isJsonObjectProperSubsetOf: (NSString*) leftObject
                       rightObject: (NSString*) rightObject
                       checkValues: (BOOL) checkValues
                        allowExtra:(BOOL) allowExtra
                         isOrdered: (BOOL) isOrdered;

+(BOOL) isArrayOfJsonObjectsProperSubsetOf: (NSString*) leftObject
                               rightObject: (NSString*) rightObject
                               checkValues: (BOOL) checkValues
                                allowExtra:(BOOL) allowExtra
                                 isOrdered: (BOOL) isOrdered;

+(BOOL) isArrayOfJsonObjectsProperSubsetOf: (NSArray<NSDictionary*>*) left
                                     right: (NSArray<NSDictionary*>*) right
                               checkValues: (BOOL) checkValues
                                allowExtra:(BOOL) allowExtra
                                 isOrdered: (BOOL) isOrdered;

+(BOOL) isListProperSubsetOf: (NSArray*) leftList
                   rightList:(NSArray*) rightList
                  allowExtra: (BOOL) allowExtra
                   isOrdered: (BOOL) isOrdered;

@end