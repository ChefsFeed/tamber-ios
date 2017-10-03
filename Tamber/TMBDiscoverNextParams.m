//
//  TMBDiscoverNextParams.m
//  Tamber
//
//  Created by Alexander Robbins on 10/3/17.
//  Copyright © 2017 Tamber. All rights reserved.
//

#import "TMBDiscoverNextParams.h"

@implementation TMBDiscoverNextParams

@synthesize additionalAPIParameters = _additionalAPIParameters;

- (instancetype)init {
    self = [super init];
    if (self) {
        _additionalAPIParameters = @{};
    }
    return self;
}

+ (nullable instancetype)discoverNext:(nullable NSNumber*) number {
    return [[self.class alloc] initWithUser:nil item:nil number:number excludeItems:nil randomness:nil filter:nil getProperties:false];
}

+ (nullable instancetype)discoverNextWithItem:(nullable NSString*) item number:(nullable NSNumber*) number {
    return [[self.class alloc] initWithUser:nil item:item number:number excludeItems:nil randomness:nil filter:nil getProperties:false];
}

+ (nullable instancetype)discoverNext:(nullable NSString*) item number:(nullable NSNumber*) number excludeItems:(nullable NSArray*) excludeItems randomness:(nullable NSNumber*) randomness  filter:(nullable NSDictionary*)filter getProperties:(BOOL) getProperties {
    return [[self.class alloc] initWithUser:nil item:nil number:number excludeItems:excludeItems randomness:randomness filter:filter getProperties:getProperties ];
}

+ (nullable instancetype)discoverNextParamsWithUser:(nullable NSString*) user number:(nullable NSNumber*) number {
    return [[self.class alloc] initWithUser:user item:nil number:number excludeItems:nil randomness:nil filter:nil getProperties:false];
}

+ (nullable instancetype)discoverNextParamsWithUser:(nullable NSString*) user item:(nullable NSString*) item number:(nullable NSNumber*) number {
    return [[self.class alloc] initWithUser:user item:item number:number excludeItems:nil randomness:nil filter:nil getProperties:false];
}


- (instancetype)initWithUser:(NSString*) user item:(NSString*) item number:(NSNumber*)number excludeItems:(NSArray*) excludeItems randomness:(NSNumber*)randomness filter:(NSDictionary*)filter getProperties:(BOOL) getProperties {
    self = [super init];
    if (self) {
        _user = user;
        _item = item;
        _number = number;
        _excludeItems = excludeItems;
        _randomness = randomness;
        _filter = filter;
        _getProperties = getProperties;
        
    }
    return self;
}


#pragma mark - TMBObjectEncodable

+ (NSString *)rootObjectName {
    return nil;
}

+ (NSDictionary *)propertyNamesToFormFieldNamesMapping {
    return @{
             @"user": @"user",
             @"item": @"item",
             @"number": @"number",
             @"excludeItems": @"exclude_items",
             @"randomness": @"randomness",
             @"filter": @"filter",
             @"getProperties": @"get_properties",
             };
}


@end