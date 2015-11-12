//
//  CEDestinySDK.swift
//  CEDestinySDK
//
//  Created by Caleb Eades on 11/12/15.
//  Copyright (c) 2015 Caleb Eades. All rights reserved.
//

import Foundation

public class CEDestinySDK {
    
    var restUtility: RestUtility
    
    public init(apiKey: String) {
        self.restUtility = RestUtility(apiKey: apiKey);
    }
    
    //MARK: Access Methods
    public func searchForAccountByPlatformAndUsername(platform: Platform, username: String, success: ((NSDictionary) -> Void)?, failure: ((NSError) -> Void)?) -> Void {
        let urlString: String = "/Platform/Destiny/SearchDestinyPlayer/\(platform.value)/\(username)"
        let successHandler = { (data: NSDictionary) -> Void in
            if let successCallback = success {
                successCallback(data)
            }
        }
        let failureHandler = { (error: NSError) -> Void in
            if let failureCallback = failure {
                failureCallback(error)
            }
        }
        self.restUtility.GET(urlString, parameters: nil, success: successHandler, failure: failureHandler)
    }
    
    // MARK: Enums
    public enum Platform: Int {
        case XBOX = 1, PSN
        var value: Int {
            switch self {
            case .XBOX: return 1;
            case .PSN: return 2;
            }
        }
    }
    
    public enum ClassType: Int {
        case TITAN = 0, HUNTER, WARLOCK
        var value: Int {
            switch self {
            case .TITAN: return 0;
            case .HUNTER: return 1;
            case .WARLOCK: return 2;
            }
        }
    }
    
    public enum Gender: Int {
        case MALE = 0, FEMALE
        var value: Int {
            switch self {
            case .MALE: return 0;
            case .FEMALE: return 1;
            }
        }
    }
}