//
//  CEResponse.swift
//  CEDestinySDK
//
//  Created by Caleb on 11/15/15.
//  Copyright © 2015 Caleb Eades. All rights reserved.
//

import Foundation

public class CEResponse: CEMappable {
    public var errorCode: Int
    public var errorStatus: String
    public var message: String
    public var messageData: NSDictionary
    public var response: NSDictionary?
    required public init(data: NSDictionary) {
        self.errorCode = (data["ErrorCode"] as? Int)!
        self.errorStatus = (data["ErrorStatus"] as? String)!
        self.message = (data["Message"] as? String)!
        self.messageData = (data["MessageData"] as? NSDictionary)!
        self.response = data["Response"] as? NSDictionary
    }
    public func toDictionary(data: AnyObject) -> NSDictionary {
        let dict: NSDictionary = NSDictionary();
        return dict;
    }
}