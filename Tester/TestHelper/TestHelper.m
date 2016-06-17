/*
 * Tester
 *
 * This file was automatically generated for Stamplay by APIMATIC v2.0 on 06/16/2016
 */
#import "TestHelper.h"

@implementation TestHelper

@synthesize mdata;

/**
Simple JSON serialization
*/
+(void) saveFile:(NSString*)string
{
    NSString *stringURL = string;
    NSURL  *url = [NSURL URLWithString:stringURL];
    NSData *urlData = [NSData dataWithContentsOfURL:url];
    if ( urlData )
    {
        NSString  *filePath = @"filename";
        [urlData writeToFile:filePath atomically:YES];
    }
}
+(NSDictionary*) jsonDeserialize:(NSString*) json
{
return [NSJSONSerialization
        JSONObjectWithData: [json dataUsingEncoding: NSUTF8StringEncoding]
        options: NSJSONReadingAllowFragments
        error: nil];
}

/**
     * Recursively check whether the leftTree is a proper subset of the right tree
     * @param leftTree Left tree
     * @param rightTree Right tree
     * @param checkValues Check primitive values for equality?
     * @param allowExtra Are extra elements allowed in right array?
     * @param isOrdered Should elements in right be compared in order to left?
     * @return
 */

+(BOOL) isProperSubsetOf: (NSDictionary*) leftTree 
               rightTree:(NSDictionary*) rightTree 
             checkValues: (BOOL) checkValues
              allowExtra: (BOOL) allowExtra
               isOrdered: (BOOL) isOrdered
{
    for (NSString* key in leftTree) {
    id leftVal = [leftTree objectForKey:key];
    id rightVal = [rightTree objectForKey:key];

    //Check if key exists
    if(![rightTree objectForKey:key])
    {
        return NO;
    }
    //Check if left value is a NSDictionary
    if([leftVal isKindOfClass:[NSDictionary class]])
    {
        //Check if right value is NSDictionary
        if([rightVal isKindOfClass:[NSDictionary class]])
        {
        //Check if right value is NSDictionary
            if(![TestHelper isProperSubsetOf:(NSDictionary*) leftVal 
                                   rightTree: rightVal 
                                 checkValues: checkValues 
                                  allowExtra:allowExtra 
                                   isOrdered:isOrdered])
            {
                return NO;
            }
        }
        else
        {
            return NO;
        }
    }
    else
    {
        //If need to check Values
        if(checkValues)
        {
            //If left value is nil right value also needs to be nil
            if(leftVal == nil)
            {
                if(rightVal != nil)
                {
                    return NO;
                }
            }
            //if left value is an Array, right value is a should be an array 
            else if([leftVal isKindOfClass:[NSArray class]])
            {
                if(![rightVal isKindOfClass:[NSArray class]])
                {
                    return NO;
                }
                if([((NSArray*)leftVal)[0] isKindOfClass:[NSDictionary class]])
                {
                    if(![TestHelper isArrayOfJsonObjectsProperSubsetOf: leftVal 
                                                                 right: rightVal 
                                                           checkValues: checkValues 
                                                            allowExtra:allowExtra 
                                                             isOrdered:isOrdered])
                    {
                        return NO;
                    }
                }
                else if (![TestHelper isListProperSubsetOf:leftVal 
                                      rightList: rightVal 
                                     allowExtra:allowExtra
                                     isOrdered: isOrdered])
                {
                    return NO;
                }
            }
            //Check for inquality between right value and left value
            else if(![leftVal isEqual:[rightTree objectForKey:key]])
            {
                return NO;
            }
        }
    }
    
}
    return YES;
}

/**
    * Recursively check whether the left JSON object is a proper subset of the right JSON object
    * @param leftObject Left JSON object as string
    * @param rightObject Right JSON object as string
    * @param checkValues Check primitive values for equality? 
    * @return
*/

+(BOOL) isJsonObjectProperSubsetOf: (NSString*) leftObject 
                       rightObject: (NSString*) rightObject  
                       checkValues: (BOOL) checkValues 
                         allowExtra:(BOOL) allowExtra 
                         isOrdered: (BOOL) isOrdered
{
    return [TestHelper isProperSubsetOf:[TestHelper jsonDeserialize: leftObject] 
                              rightTree: [TestHelper jsonDeserialize: rightObject] 
                            checkValues: checkValues 
                             allowExtra:allowExtra 
                              isOrdered:isOrdered];
}
    
/**
    * Check if left array of objects is a subset of right array
    * @param leftObject Left array as a JSON string
    * @param rightObject Right array as a JSON string
    * @param checkValues Check primitive values for equality?
    * @param allowExtra Are extra elements allowed in right array?
    * @param isOrdered Should elements in right be compared in order to left?
    * @return True if it is a subset
    * @throws IOException
*/	


+(BOOL) isArrayOfJsonObjectsProperSubsetOf: (NSString*) leftObject 
                       rightObject: (NSString*) rightObject  
                       checkValues: (BOOL) checkValues 
                         allowExtra:(BOOL) allowExtra 
                         isOrdered: (BOOL) isOrdered
{
    NSArray<NSDictionary*>* left = [APIHelper jsonDeserializeArray: leftObject];
    NSArray<NSDictionary*>* right = [APIHelper jsonDeserializeArray: rightObject];

    return [TestHelper isArrayOfJsonObjectsProperSubsetOf: left 
                                  right:right checkValues:checkValues 
                             allowExtra:allowExtra 
                              isOrdered:isOrdered];
}

/**
     * Check if left array of objects is a subset of right array
     * @param left Left array as a JSON string
     * @param right Right array as a JSON string
     * @param checkValues Check primitive values for equality?
     * @param allowExtra Are extra elements allowed in right array?
     * @param isOrdered Should elements in right be compared in order to left?
     * @return True if it is a subset
     * @throws IOException
*/

+(BOOL) isArrayOfJsonObjectsProperSubsetOf: (NSArray<NSDictionary*>*) left 
                                     right: (NSArray<NSDictionary*>*) right  
                               checkValues: (BOOL) checkValues 
                                 allowExtra:(BOOL) allowExtra 
                                 isOrdered: (BOOL) isOrdered
{
    //Return false if size is different and extras are not allowed
    if(!allowExtra && ([left count]!=[right count]))
        return NO;
    int lcount = 0;
    int rcount = 0;
    for (int i=0; i<[left count]; i++)
    {
        NSDictionary* leftTree = (NSDictionary*) left[lcount++];
        BOOL found  = NO;
        if(!isOrdered)
            rcount = rcount;
        for (int j=0; j<[right count]; j++)
        {
            if([TestHelper isProperSubsetOf:leftTree 
                       rightTree:(NSDictionary*)right[rcount++] 
                     checkValues:checkValues 
                      allowExtra:allowExtra 
                       isOrdered:isOrdered])
            {
                found = YES;
                break;
            } 
        }
        if(!found)
        {
            return NO;
        }
    }
    return YES;
}


/**
     * Check whether the a list is a subset of another list
     * @param leftList Expected List
     * @param rightList List to check
     * @param allowExtra Are extras allowed in the list to check?
     * @param isOrdered Should checking be in order?
     * @return
*/
+(BOOL) isListProperSubsetOf: (NSArray*) leftList 
                   rightList:(NSArray*) rightList 
                  allowExtra: (BOOL) allowExtra 
                   isOrdered: (BOOL) isOrdered
{
    
    NSSet *set2 = [NSSet setWithArray:rightList];
    if(isOrdered)
    {
        NSSet *set1 = [[NSSet alloc]init];

        if(!allowExtra)
        {
            set1 = [NSSet setWithArray:leftList];
        }
        else
        {
            set1 = [NSSet setWithArray:[leftList subarrayWithRange:NSMakeRange(0, [leftList count])]];
        }
        return [set1 isEqualToSet:set2];
    }
    else 
    {
        NSSet *set1 = [NSSet setWithArray:leftList];
        if (!allowExtra)
        {
            return (([leftList count]==[rightList count]) && [set2 isSubsetOfSet:set1]);
        }
        else
        {
            return [set2 isSubsetOfSet:set1];
        }
            
    }
    return YES;
}
@end	


