//
//  APIHelper.m
//  Tester
//
//  This file was automatically generated for Stamplay by APIMATIC v2.0 ( https://apimatic.io ) on 06/16/2016
//
#import "APIHelper.h"

@implementation APIHelper

/**
 * JSON Serialization of a given object.
 * @param	obj		The object to serialize into JSON
 * @return	The	serialized Json string representation of the given object */
+ (NSString*) jsonSerialize: (NSObject*) obj
{
    if(nil == obj)
        return nil;
    
    if([NSJSONSerialization isValidJSONObject:obj]){
        //If valid json object then deserialise.
        NSError* error;
        NSData *jsonData = [NSJSONSerialization dataWithJSONObject:obj options:0 error:&error];
        NSString *jsonString = [[NSString alloc] initWithData:jsonData encoding:NSUTF8StringEncoding];
        return jsonString;
    }
    if([obj isKindOfClass:[JSONModel class]]){
        //Check if can be json serialised by mapping
        return [(JSONModel*)obj toJSONString];
    }
    if([obj isKindOfClass:[NSArray class]]){
        //Assume array of JSONModels.
        NSMutableArray* jsonArray = [JSONModel arrayOfDictionariesFromModels:(NSArray*)obj];
        return [APIHelper jsonSerialize:jsonArray];
    }
    if([obj isKindOfClass:[NSDictionary class]]){
        id modifiedDict =  [self dictionaryify:[(NSDictionary*)obj mutableCopy]];
        //Should be a valid json
        NSError* error;
        if([NSJSONSerialization dataWithJSONObject:obj options:0 error:&error]){
            return [APIHelper jsonSerialize:modifiedDict];
        }
    }
    
    return nil;
}

/**
 * Prepares a dictionary to be JSON friendly.
 * @param	dict	   Dictionary to convert
 * @return	Dictionary Coverted dictionary
 */
+ (NSMutableDictionary*) dictionaryify:(NSDictionary*) dict
{
    //Go through each key checking if that object is either conforms to protocol toDictionary or is json representable.
    id object = nil;
    NSMutableDictionary* newDict = [dict mutableCopy];
    
    NSEnumerator* keys = [dict keyEnumerator];
    while ((object = [keys nextObject])) {
        id value = [dict objectForKey:object];
        if ([value isKindOfClass:[NSNumber class]] || [value isKindOfClass:[NSString class]] ){
            continue;
        }
        if([NSJSONSerialization isValidJSONObject:value]){
            //If valid json object then continue.
            continue;
        }else if([value isKindOfClass:[JSONModel class]]){
            //Can JSON serialise using library.
            [newDict setValue: [(JSONModel*)value toDictionary] forKey:object];
        }else if([value isKindOfClass:[NSArray class]]){
            //Assume array of JSONModels.
            NSMutableArray* jsonArray = [JSONModel arrayOfDictionariesFromModels:(NSArray*)value];
            [newDict setValue:jsonArray forKey:object];
        }else if([value isKindOfClass:[NSDictionary class]]){
            id modifiedDict =  [self dictionaryify:[(NSDictionary*)value mutableCopy]];
            //Should be a valid json
            NSError* error;
            if([NSJSONSerialization dataWithJSONObject:modifiedDict options:0 error:&error]){
                [newDict setValue:modifiedDict forKey:object];
            }
        }
    }
    return newDict;
}

/**
 * JSON Deserialization of the given json string.
 * @param	json	The json string to deserialize
 * @return	The deserialized dictionary */
+ (NSDictionary*) jsonDeserialize: (NSString*) json
{
    NSError* err = nil;
    NSData* jsonData = [json dataUsingEncoding:NSUTF8StringEncoding];
    NSDictionary* jsonObject = [NSJSONSerialization 
                                JSONObjectWithData: jsonData
                                           options: NSJSONReadingMutableContainers
                                             error: &err];
    return jsonObject;
}


/**
 * JSON Deserialization of the given json string.
 * @param	json	The json string to deserialize
 * @param	cls		The type of the object to desialize into
 * @return	The deserialized object */
+ (JSONModel*) jsonDeserialize: (NSString*) json
                       toClass: (Class) cls
{
    NSError* err = nil;
    JSONModel* model = [[cls alloc] initWithString: json 
                                             error: &err];
    return model;
}

/**
 * JSON Deserialization of the given json string.into an array of json objects
 * @param	json	The json string to deserialize
 * @return	The deserialized array of json objects */
+ (NSArray*) jsonDeserializeArray: (NSString*) json
{
    NSError* err = nil;
    NSData* jsonData = [json dataUsingEncoding:NSUTF8StringEncoding];
    NSArray* jsonObjects = [NSJSONSerialization 
                                JSONObjectWithData: jsonData
                                           options: NSJSONReadingAllowFragments|NSJSONReadingMutableContainers
                                             error: &err];
    
    return jsonObjects;
}

/**
 * Replaces template parameters in the given url
 * @param	queryBuilder    The query string builder to replace the template parameters
 * @param	parameters	The parameters to replace in the url */
+ (void) appendUrl: (NSMutableString*) queryBuilder withTemplateParameters: (NSDictionary*) parameters
{
    //perform parameter validation
    if ([APIHelper isNullOrWhiteSpace: queryBuilder])
        @throw([NSException exceptionWithName: @"IllegalArgumentException"
                                       reason: @"The given parameter value for \"queryUrl\" is invalid"
                                     userInfo: nil]);
    
    if (nil == parameters)
        return;
    
    //iterate and append parameters
    NSEnumerator* enumerator = [parameters keyEnumerator];
    NSString* key;
    while (key = [enumerator nextObject])
    {
        NSObject* value = [parameters objectForKey:key];
        NSString* replaceValue = Nil;
        
        //load element value as string
        if ((nil == value) || ([NSNull null] == value))
            replaceValue = @"";
        else if ([value respondsToSelector: @selector(lastObject)])
            replaceValue = [self flattenCollection: (NSArray*) value
                                        withFormat: @"%@%@"
                                      andSeparator: @"/"];
        else
            replaceValue = [self urlEncode:value];
        
        //find the template parameter and replace it with its value
        [queryBuilder replaceOccurrencesOfString: [NSString stringWithFormat: @"{%@}", key]
                                      withString: replaceValue
                                         options: NSCaseInsensitiveSearch
                                           range: NSMakeRange(0, [queryBuilder length])];
    }
}

/**
 * Appends the given set of parameters to the given query string
 * @param	queryBuilder	The query url string to append the parameters
 * @param	parameters	The parameters to append */
+ (void) appendUrl: (NSMutableString*) queryBuilder withQueryParameters: (NSDictionary*) parameters
{
    //perform parameter validation
    if ([APIHelper isNullOrWhiteSpace: queryBuilder])
        @throw([NSException exceptionWithName: @"IllegalArgumentException"
                                       reason: @"The given parameter value for \"queryUrl\" is invalid"
                                     userInfo: nil]);
    
    if (nil == parameters)
        return;
    
    //does the query string already has parameters
    BOOL hasParams = ([self indexOf: @"?" in: queryBuilder] > 0);
    
    //iterate and append parameters
    NSEnumerator* enumerator = [parameters keyEnumerator];
    NSString* key;
    while (key = [enumerator nextObject])
    {
        NSObject* value = [parameters objectForKey:key];
        if ((nil == value) || ([NSNull null] == value))
            continue;
        
        //if already has parameters, use the &amp; to append new parameters
        [queryBuilder appendFormat: @"%c", ((hasParams) ? '&' : '?')];
        
        //indicate that now the query has some params
        hasParams = true;
        
        NSString* paramKeyValPair = Nil;
        
        //load element value as string
        if ([value respondsToSelector: @selector(lastObject)])
            paramKeyValPair = [self flattenCollection: (NSArray*) value
                                           withFormat: [NSString stringWithFormat: @"%@[]=%%@%%@", key]
                                         andSeparator: @"&"];
        else{
            value = [self urlEncode:value];
            paramKeyValPair = [NSString stringWithFormat: @"%@=%@", key, value];
        }
        //append keyval pair for current parameter
        [queryBuilder appendString: paramKeyValPair];
    }
}

/**
 * Validates if the string is null, empty or whitespace
 * @param	str	The string to validate
 * @return	The result of validation */
+ (BOOL) isNullOrWhiteSpace:(const NSString*) str
{
    if(str == nil)
        return true;
    
    NSUInteger length = [str length];
    
    if (length > 0)
    {
        for (NSInteger start = 0, middle = length / 2, end = length - 1; start <= middle; start++, end--)
        {
            if (([str characterAtIndex: start]) > ' ' || ([str characterAtIndex: end]) > ' ')
            {
                return false;
            }
        }
        return true;
    }
    return false;
}
 
/**
 * Finds the index of a given string from a larger string
 * @param	strFind	The string to find index of
 * @param	strData	The string to find index from
 * @return	The result of validation */                     
+ (NSInteger) indexOf: (NSString*) strFind
                   in:(NSString*) strData
{
    NSRange range = [strData rangeOfString:strFind];
    if(0 == range.length)
        return -1;
    return range.location;
}

/**
 * Url encodes the primitive value
 * @param    value the value to encode
 * @return   Url encoded string */
+ (NSString*) urlEncode:(id) value
{
    return (NSString *) CFBridgingRelease(CFURLCreateStringByAddingPercentEscapes(NULL,(__bridge CFStringRef) [value description],NULL,CFSTR("!*'();:@&=+$,/?%#[]\" "),kCFStringEncodingUTF8));
}

/**
 * Validates and processes the given Url
 * @param    url The given Url to process
 * @return   Pre-process Url as string */
+(NSString*) cleanUrl: (NSString*) url
{
    NSError* err = nil;

    //regex to load query from url
    NSRegularExpression *queryRegex = [NSRegularExpression 
                                            regularExpressionWithPattern: @"//+" 
                                                                 options: NSRegularExpressionCaseInsensitive 
                                                                   error: &err];
    //replace string using regex matches
    return [queryRegex stringByReplacingMatchesInString: url
                                                options: 0 
                                                  range: NSMakeRange(7, [url length] - 7) 
                                           withTemplate: @"/"];
}

/**
 * Removes any NSNull value from the given dictionary
 * @param    url The given Url to process */
+(void) removeNullValues: (NSMutableDictionary*) dictionary
{
    NSArray* keys = [dictionary allKeys];
    for (id key in keys)
    {
        id value = [dictionary objectForKey: key];
        if([NSNull null] == value)
        {
            [dictionary removeObjectForKey: key];
        }
    }
}


/**
 * Used for flattening a collection of objects into a string
 * @param   array	Array of elements to flatten
 * @param   fmt Format string to use for array flattening
 * @param	separator	Separator to use for string concat
 * @return	Representative string made up of array elements */
+ (NSString*) flattenCollection: (NSArray*) array withFormat: (NSString*) fmt andSeparator: (NSString*) separator
{
    NSMutableString* builder = [[NSMutableString alloc] init];
    
    //append all elements in the array into a string
    NSEnumerator *e = [array objectEnumerator];
    id element;
    while (element = [e nextObject])
    {
        NSString* elemValue = Nil;
        
        //replace null values with empty string to maintain index order
        if (Nil == element)
            elemValue = @"";
        else
        {
            elemValue = [NSString stringWithFormat: @"%@", element];
            elemValue = [self urlEncode:elemValue];
        }
        [builder appendFormat: fmt, elemValue, separator];
    }
    
    //remove the last separator, if appended
    if (([builder length] > 1) && ([builder hasSuffix: separator]))
        [builder deleteCharactersInRange: NSMakeRange([builder length]-1, 1) ];
                                    
    return builder;
}

/**
 * Prepares Array style form fields from a given array of values
 * @param	name	Name of the form field
 * @param 	values	Values for the array form field
 * @return	Dictionary of form fields created from array elements */
+ (NSDictionary*) prepareFormFieldsFromArrayName: (NSString*) name andValues: (NSArray*) values
{
    NSMutableDictionary* formFields = [[NSMutableDictionary alloc] init];
        
    //counter for array index
    int index = 0;
    
    //iterate over all elements and create form array fields
    NSEnumerator *e = [values objectEnumerator];
    id element;
    while (element = [e nextObject])
    {
        NSString* elemValue = Nil;
            
        //replace null values with empty string to maintain index order
        if (Nil == element)
            elemValue = @"";
        else
            elemValue = [NSString stringWithFormat: @"%@", element];
        
        NSString* key = [NSString stringWithFormat: @"%@[%d]", name, index++];
        
        //create the form field array element
        [formFields setValue: elemValue forKey: key];
    }
        
    return formFields;
}


/**
 * Serializes a dictionary to formdata format.
 * @param {NSDictionary} A JSON Friendly Dictionary. 
 * @param {NSMutableDictionary} .
 * @return {String}
 */
+ (NSMutableDictionary*) formDataEncodeDictionary: (NSDictionary*) obj{
    
    NSMutableDictionary* keys = [[NSMutableDictionary alloc]init];
    [obj enumerateKeysAndObjectsUsingBlock:^(NSString* name, id value, BOOL *stop) {
        id subValue;
        NSString* fullSubName;
        NSDictionary* innerObj;
        
        if ([value isKindOfClass:[NSURL class]]) {
            [keys setValue:value forKey:name];
        }
        else if([value isKindOfClass:[NSArray class]]){
            for (int i = 0; i < [value count]; ++i) {
                subValue = [value objectAtIndex:i];
                fullSubName = [NSString stringWithFormat:@"%@[%d]",name,i];
                innerObj = @{fullSubName:subValue};
                [keys addEntriesFromDictionary:[APIHelper formDataEncodeDictionary: innerObj]];
            }
        }
        else if([value isKindOfClass:[NSDictionary class]]){
            
            NSArray* valueKeys = [value allKeys];
            for (id subName in valueKeys)
            {
                subValue = [value objectForKey:subName];
                fullSubName = [NSString stringWithFormat:@"%@[%@]",name,subName];
                innerObj = @{fullSubName:subValue};
                [keys addEntriesFromDictionary:[APIHelper formDataEncodeDictionary: innerObj]];
            }
        }
        else if(value != [NSNull null]){
                value = [NSString stringWithFormat: @"%@", value];
                [keys setValue:value forKey:name];
        }
    }];
    
    return keys;
}

/**
 * Prepares a parameter dictionary with values as form fields.
 * @param {NSDictionary} A JSON Friendly Dictionary. 
 * @param {NSMutableDictionary} .
 * @return {String}
 */
+ (NSMutableDictionary*) prepareParametersAsFormFields: (NSMutableDictionary*) parameters
{
    //Recursively iterate through parameters converting models in to simple dictionary.
    parameters = [APIHelper dictionaryify:parameters];
    //convert the keys to be sent as form parameters.
    parameters = [APIHelper formDataEncodeDictionary:parameters];
    return parameters;
}

@end