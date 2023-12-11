//
//  CleanArchitectureExampleObjCTests.m
//  CleanArchitectureExampleObjCTests
//
//  Created by Jainesh Patel on 11/12/23.
//  Copyright © 2023 lbabovic. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "ViewController.h"
#import "MockAppDependeciesContainer.h"

@interface CleanArchitectureExampleObjCTests : XCTestCase

//@property (strong, nonatomic) ViewController* mainVc;
@property (strong, nonatomic) ViewControllerDataSource* vcDataSource;

@property (strong, nonatomic) MockAppDependeciesContainer* dependencyContainer;

@end

@implementation CleanArchitectureExampleObjCTests

- (void)setUp {
    // Put setup code here. This method is called before the invocation of each test method in the class.
    _dependencyContainer = [[MockAppDependeciesContainer alloc] init];
    _vcDataSource = [[ViewControllerDataSource alloc] init: _dependencyContainer];
   // _mainVc = [[ViewController alloc] init:_vcDataSource];
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    _dependencyContainer = nil;
    _vcDataSource = nil;
   // _mainVc = nil;

}

- (void)testFetchArticles {
    ViewController *mainVc = [[ViewController alloc] init:_vcDataSource];
  //  [mainVc viewDidLoad];
    XCTAssertFalse(mainVc.isArticleLoadedSuccessfully);
}
@end
