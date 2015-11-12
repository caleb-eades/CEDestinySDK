//
//  RestUtility.swift
//  DestinyAPI
//
//  Created by Caleb Eades on 11/5/15.
//  Copyright (c) 2015 Caleb Eades. All rights reserved.
//

import Foundation
import AFNetworking

class RestUtility {
    var requestOperationManager: AFHTTPRequestOperationManager!
    
    init(apiKey: String) {
        let url: NSURL = NSURL(string: "http://www.bungie.net")!
        self.requestOperationManager = AFHTTPRequestOperationManager(baseURL: url)
        self.requestOperationManager.requestSerializer = AFJSONRequestSerializer()
        self.requestOperationManager.requestSerializer.setValue(apiKey, forHTTPHeaderField: "X-API-Key")
    }
    
    func GET(URLString: String, parameters: AnyObject?, success: ((NSDictionary) -> Void)?, failure: ((NSError) -> Void)?) {
        // Define Callbacks
        let successHandler = { (operation: AFHTTPRequestOperation, responseObject: AnyObject) -> Void in
            if let successCallback = success {
                let dictResponse: NSDictionary = responseObject as! NSDictionary
                successCallback(dictResponse)
            }
        }
        
        let failureHandler = { (operation: AFHTTPRequestOperation, error: NSError) -> Void in
            if let failureCallback = failure {
                failureCallback(error)
            }
        }
        
        requestOperationManager.GET(URLString, parameters: parameters, success: successHandler, failure: failureHandler)
    }
}