//
//  StandardUserDefaultsManager.m
//  RNStandardUserDefaultsIOS
//
//  Created by Dave Sibiski on 5/15/15.
//  Copyright (c) 2015 Dave Sibiski. All rights reserved.

#import "UserDefaultsManager.h"

NSUserDefaults *myDefaults = nil;

@implementation UserDefaultsManager

+ (void)setGroup: (NSString *)group {
    myDefaults = [[NSUserDefaults alloc] initWithSuiteName: group];
}

+ (NSUserDefaults *)myDefaults {
    if (myDefaults == nil) {
        return [NSUserDefaults standardUserDefaults];
    }
    return myDefaults;
}

+ (void)setObject:(id)object forKey:(NSString *)key {
    
    [[UserDefaultsManager myDefaults] setObject:object forKey:key];
}

+ (void)setBool:(bool)value forKey:(NSString *)key {
    
    [[UserDefaultsManager myDefaults] setBool:value forKey:key];
}

+ (void)removeObjectForKey:(NSString *)key {
    
    [[UserDefaultsManager myDefaults] removeObjectForKey:key];
}

+ (NSArray *)arrayForKey:(NSString *)key {
    
    return [[UserDefaultsManager myDefaults] arrayForKey:key];
}

+ (NSString *)stringForKey:(NSString *)key {
    
    return [[UserDefaultsManager myDefaults] stringForKey:key];
}

+ (id)objectForKey:(NSString *)key {
    
    return [[UserDefaultsManager myDefaults] objectForKey:key];
}

+ (bool)boolForKey:(NSString *)key {
    
    return [[UserDefaultsManager myDefaults] boolForKey:key];
}

@end
