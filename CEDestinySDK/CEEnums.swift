//
//  Enums.swift
//  CEDestinySDK
//
//  Created by Caleb on 11/15/15.
//  Copyright © 2015 Caleb Eades. All rights reserved.
//

import Foundation

public class CEEnums {
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