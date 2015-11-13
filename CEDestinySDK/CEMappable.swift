//
//  CEMappable.swift
//  CEDestinySDK
//
//  Created by Caleb Eades on 11/13/15.
//  Copyright (c) 2015 Caleb Eades. All rights reserved.
//

import Foundation

protocol CEMappable {
    init(data: NSDictionary)
    func toDictionary(data: AnyObject) -> NSDictionary
}