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

class CEDestinySDKTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testExample() {
        // This is an example of a functional test case.
        XCTAssert(true, "Pass")
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measureBlock() {
            // Put the code you want to measure the time of here.
        }
    }
    
    func testSearchForAccountByPlatformAndUsername() {
        let destinySDK: CEDestinySDK = CEDestinySDK(apiKey: "aa8ee11103a0466097f2b54fbcbff048")
        destinySDK.searchForAccountByPlatformAndUsername(CEDestinySDK.Platform.XBOX, username: "Bilbo0fBagEnd", success: nil, failure: nil)
    }
    
}
