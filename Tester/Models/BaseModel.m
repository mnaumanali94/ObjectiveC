//
//  BaseModel.m
//  Tester
//
//  This file was automatically generated for Stamplay by APIMATIC v2.0 ( https://apimatic.io ) on 06/16/2016
//
#import "BaseModel.h"
#import "APIHelper.h"

@implementation BaseModel

@synthesize AdditionalProperties;

- (id) init
{
    if (self = [super init]) {
        self.AdditionalProperties = [[NSMutableDictionary alloc]init];
    }
    return self;
}

- (void) setValue:(id) value forUndefinedKey:(NSString*) key
{
    //Need to check if this key maps to a property of this model.
    JSONKeyMapper* mapper = [[self class] keyMapper];    NSString* propertyName = [mapper convertValue:key isImportingToModel:NO];
    if(propertyName!=key){
        //Using a name mapped in the API
        return [self setValue:value forKey:propertyName];
    }
    [self.AdditionalProperties setObject: value forKey:key];
}

- (id) valueForUndefinedKey:(NSString *) key
{
    return [self.AdditionalProperties objectForKey:key];
}



/**
 * Initialises properties from Dictionary. Any Additional properties are added to AdditonalProperties dictionary.
 */
- (id) initWithDictionary:(NSDictionary*) dict error:(NSError**) err
{
    id result = [super initWithDictionary:dict error:err];
    
    //Add extra values where the key does not exist
    id key = nil;
    NSEnumerator* keys = [dict keyEnumerator];

    JSONKeyMapper* mapper = [[self class] keyMapper];
    while ((key = [keys nextObject])) {
        id value = [dict objectForKey:key];
        if (value){
            //Check to see that this is not a defined property of the model.
            NSString* propertyName = [mapper convertValue:key isImportingToModel:YES];
            if([self valueForKey:propertyName] == nil){
                [self.AdditionalProperties setObject:value forKey:key];
            }
        }
    }
    return  result;
}

/**
 * Method to convert the attributes of this class to a dictionary from.
 */
- (NSDictionary*) toDictionaryWithKeys:(NSArray*) propertyNames
{
    NSMutableDictionary* newDict = [[super toDictionaryWithKeys:propertyNames] mutableCopy];
    
    //Add all additional properties
    [newDict addEntriesFromDictionary:self.AdditionalProperties];
    newDict  = [APIHelper dictionaryify:newDict];
    return newDict;
}
@end