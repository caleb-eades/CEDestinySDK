//
//  CEDestinySDK.swift
//  CEDestinySDK
//
//  Created by Caleb Eades on 11/12/15.
//  Copyright (c) 2015 Caleb Eades. All rights reserved.
//

import Foundation

public class CEDestinySDK {
    
    var restUtility: CERestUtility
    public init(apiKey: String) {
        self.restUtility = CERestUtility(apiKey: apiKey);
    }
    
    //MARK: Access Methods
    /**
    Asynchronously retrieves Destiny account information for the supplied membership
    {BASE_URL}/Platform/Destiny/{membershipType}/Account/{destinyMembershipId}
    
    - Parameter membershipType: Membership type; currently XBOX and PSN
    - Parameter destinyMembershipId: Numerical ID of a player
    - Parameter success: Success Callback (Optional)
    - Parameter failure: Failure Callback (Optional)
    */
    public func getAccountSummary(membershipType: MembershipType, destinyMembershipId: Int, success: ((NSDictionary) -> Void)?, failure: ((NSError) -> Void)?) -> Void {
        let urlString: String = "/Platform/Destiny/\(membershipType.value)/Account/\(destinyMembershipId)/Summary"
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
    
    /**
    Asynchronously retrieves activity history stats for indicated character
    {BASE_URL}/Platform/Destiny/Stats/ActivityHistory/{membershipType}/{destinyMembershipId}/{characterId}
    
    - Parameter membershipType: Membership type; currently XBOX and PSN
    - Parameter destinyMembershipId: Numerical ID of a player
    - Parameter characterId: Numerical ID of a character
    - Parameter success: Success Callback (Optional)
    - Parameter failure: Failure Callback (Optional)
    */
    public func getActivityHistoryForCharacter(membershipType: MembershipType, destinyMembershipId: Int, characterId: Int, success: ((NSDictionary) -> Void)?, failure: ((NSError) -> Void)?) {
        let urlString: String = "/Platform/Destiny/Stats/ActivityHistory/\(membershipType.value)/\(destinyMembershipId)/\(characterId)"
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
    
    /**
    Asynchronously retrieves activity history stats for indicated character
    {BASE_URL}/Platform/Destiny/Stats/ActivityHistory/{membershipType}/{destinyMembershipId}/{characterId}
    
    - Parameter membershipType: Membership type; currently XBOX and PSN
    - Parameter destinyMembershipId: Numerical ID of a player
    - Parameter success: Success Callback (Optional)
    - Parameter failure: Failure Callback (Optional)
    */
    public func getItems(membershipType: MembershipType, destinyMembershipId: Int, success: ((NSDictionary) -> Void)?, failure: ((NSError) -> Void)?) {
        let urlString: String = "/Platform/Destiny/\(membershipType.value)/Account/\(destinyMembershipId)/Items/"
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
    
    /**
    Asynchronously retrieves a list of Destiny memberships given a full Gamertag or PSN ID
    {BASE_URL}/Platform/Destiny/SearchDestinyPlayer/{membershipType}/{displayName}

    - Parameter membershipType: Membership type; currently XBOX and PSN
    - Parameter displayName: User's gamertag or PSNID
    - Parameter success: Success Callback (Optional)
    - Parameter failure: Failure Callback (Optional)
    */
    public func searchForAccount(membershipType: MembershipType, displayName: String, success: ((NSDictionary) -> Void)?, failure: ((NSError) -> Void)?) -> Void {
        let urlString: String = "/Platform/Destiny/SearchDestinyPlayer/\(membershipType.value)/\(displayName)"
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
    public enum MembershipType: Int {
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