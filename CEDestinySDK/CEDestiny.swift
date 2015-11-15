//
//  CEDestinySDK.swift
//  CEDestinySDK
//
//  Created by Caleb Eades on 11/12/15.
//  Copyright (c) 2015 Caleb Eades. All rights reserved.
//

import Foundation

public class CEDestiny {
    
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
    public func getAccountSummary(membershipType: CEEnums.MembershipType, destinyMembershipId: Int, success: ((CEResponse) -> Void)?, failure: ((NSError) -> Void)?) -> Void {
        let urlString: String = "/Platform/Destiny/\(membershipType.value)/Account/\(destinyMembershipId)/Summary"
        let successHandler = { (data: NSDictionary) -> Void in
            if let successCallback = success {
                successCallback(CEResponse(data: data))
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
    public func getActivityHistoryForCharacter(membershipType: CEEnums.MembershipType, destinyMembershipId: Int, characterId: Int, success: ((CEResponse) -> Void)?, failure: ((NSError) -> Void)?) {
        let urlString: String = "/Platform/Destiny/Stats/ActivityHistory/\(membershipType.value)/\(destinyMembershipId)/\(characterId)"
        let successHandler = { (data: NSDictionary) -> Void in
            if let successCallback = success {
                successCallback(CEResponse(data: data))
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
    public func getItems(membershipType: CEEnums.MembershipType, destinyMembershipId: Int, success: ((CEResponse) -> Void)?, failure: ((NSError) -> Void)?) {
        let urlString: String = "/Platform/Destiny/\(membershipType.value)/Account/\(destinyMembershipId)/Items/"
        let successHandler = { (data: NSDictionary) -> Void in
            if let successCallback = success {
                successCallback(CEResponse(data: data))
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
    public func searchForAccount(membershipType: CEEnums.MembershipType, displayName: String, success: ((CEResponse) -> Void)?, failure: ((NSError) -> Void)?) -> Void {
        let urlString: String = "/Platform/Destiny/SearchDestinyPlayer/\(membershipType.value)/\(displayName)"
        let successHandler = { (data: NSDictionary) -> Void in
            if let successCallback = success {
                successCallback(CEResponse(data: data))
            }
        }
        let failureHandler = { (error: NSError) -> Void in
            if let failureCallback = failure {
                failureCallback(error)
            }
        }
        self.restUtility.GET(urlString, parameters: nil, success: successHandler, failure: failureHandler)
    }
}