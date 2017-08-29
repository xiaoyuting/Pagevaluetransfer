//
//  ________block__Tests.m
//  属性代理通知单利block传值Tests
//
//  Created by 雨停 on 2017/3/9.
//  Copyright © 2017年 yuting. All rights reserved.
//

#import <XCTest/XCTest.h>

@interface ________block__Tests : XCTestCase

@end

@implementation ________block__Tests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testExample {
    // This is an example of a functional test case.
    // Use XCTAssert and related functions to verify your tests produce the correct results.
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

@end
