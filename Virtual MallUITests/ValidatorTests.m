//
//  ValidatorTests.m
//  Virtual Mall
//
//  Created by Mohini Sindhu  on 21/03/17.
//  Copyright © 2017 mindfire. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "Validator.h"

@interface ValidatorTests : XCTestCase

@end

@implementation ValidatorTests
{
	Validation *validation;
}

- (void)setUp
{
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown
{
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

-(void) testValidateName
{
	validation=[Validator validateName:@"M"];
	XCTAssertEqualObjects(validation.valid,kValidKeyNoValue,@"Not a correct format");
	validation=[Validator validateName:@"MOHINI"];
	XCTAssertEqualObjects(validation.valid,kValidKeyYesValue,@"a correct format");
	validation=[Validator validateName:@"123"];
	XCTAssertEqualObjects(validation.valid,kValidKeyNoValue,@"Not a correct format");
	
	validation=[Validator validateEmail:@"mohini.sindhu14@gmail.com"];
	XCTAssertEqualObjects(validation.valid,kValidKeyYesValue,@"Not a correct format");

}
@end
