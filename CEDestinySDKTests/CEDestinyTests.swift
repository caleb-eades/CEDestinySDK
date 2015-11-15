//
//  CEDestinySDKTests.swift
//  CEDestinySDKTests
//
//  Created by Caleb Eades on 11/12/15.
//  Copyright (c) 2015 Caleb Eades. All rights reserved.
//

import UIKit
import XCTest
import CEDestinySDK

class CEDestinyTests: XCTestCase {
    var destiny: CEDestiny?
    let destinyMembershipId: Int = 4611686018449355789
    let characterId: Int = 2305843009300955854
    
    override func setUp() {
        super.setUp()
        self.destiny = CEDestiny(apiKey: "aa8ee11103a0466097f2b54fbcbff048")
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testGetAccountSummary() {
        let expectation = self.expectationWithDescription("Completion handler called")
        let successHandler = { (data: CEResponse) -> Void in
            XCTAssert(true)
            expectation.fulfill()
        }
        let failureHandler = {(error: NSError) -> Void in
            print(error)
            XCTAssert(false)
            expectation.fulfill()
        }
        self.destiny!.getAccountSummary(CEEnums.MembershipType.XBOX, destinyMembershipId: self.destinyMembershipId, success: successHandler, failure: failureHandler)
        waitForExpectationsWithTimeout(1000, handler: nil)
    }
    
    func testGetActivityHistoryForCharacter() {
        let expectation = self.expectationWithDescription("Completion handler called")
        let successHandler = { (data: CEResponse) -> Void in
            XCTAssert(true)
            expectation.fulfill()
        }
        let failureHandler = {(error: NSError) -> Void in
            print(error)
            XCTAssert(false)
            expectation.fulfill()
        }
        self.destiny!.getActivityHistoryForCharacter(CEEnums.MembershipType.XBOX, destinyMembershipId: self.destinyMembershipId, characterId: self.characterId, success: successHandler, failure: failureHandler)
        waitForExpectationsWithTimeout(1000, handler: nil)
    }
    
    func testGetItems() {
        let expectation = self.expectationWithDescription("Completion handler called")
        let successHandler = { (data: CEResponse) -> Void in
            XCTAssert(true)
            expectation.fulfill()
        }
        let failureHandler = {(error: NSError) -> Void in
            print(error)
            XCTAssert(false)
            expectation.fulfill()
        }
        self.destiny!.getItems(CEEnums.MembershipType.XBOX, destinyMembershipId: self.destinyMembershipId, success: successHandler, failure: failureHandler)
        waitForExpectationsWithTimeout(1000, handler: nil)
    }
    
    func testSearchForAccountByPlatformAndUsername() {
        let expectation = self.expectationWithDescription("Completion handler called")
        let successHandler = { (data: CEResponse) -> Void in
            XCTAssert(true)
            expectation.fulfill()
        }
        let failureHandler = { (error: NSError) -> Void in
            print(error)
            XCTAssert(false)
            expectation.fulfill()
        }
        self.destiny!.searchForAccount(CEEnums.MembershipType.XBOX, displayName: "Bilbo0fBagEnd", success: successHandler, failure: failureHandler)
        waitForExpectationsWithTimeout(1000, handler: nil)
    }
    
}
