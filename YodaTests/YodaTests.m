//
//  YodaTests.m
//  YodaTests
//
//  Created by Jana on 05/11/2013.
//  Copyright (c) 2013 jana. All rights reserved.
//

#import "YodaTests.h"
#import "UNIRest.h"
@implementation YodaTests

- (void)setUp
{
    [super setUp];
    
    // Set-up code here.
}

- (void)tearDown
{
    // Tear-down code here.
    
    [super tearDown];
}

- (void)testGet
{
    UNIHTTPJsonResponse* response = [[UNIRest get:^(UNISimpleRequest * request) {
        [request setUrl:@"https://yoda.p.mashape.com/yoda?sentence= Jana"];
    }] asJson];

    NSDictionary* args = [response.body.object valueForKey:@"args"];

    NSAssert(200 == response.code, @"Invalid code %d", response.code);
    NSAssert(1 == [args count], @"Invalid arguments size");
   
}

@end
