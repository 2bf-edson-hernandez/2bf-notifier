//
//  Context.swift
//  Notification Agent
//
//  Created by Simone Martorelli on 31/03/2021.
//  Copyright © 2021 IBM Inc. All rights reserved.
//  SPDX-License-Identifier: Apache2.0
//

import Foundation

/// Application context
final class Context {
    
    static let main: Context = Context()

    // MARK: - Variables
    
    private var _sharedSettings: SharedSettings?
    var sharedSettings: SharedSettings? {
        get {
            guard let settings = _sharedSettings else {
                return SharedSettings(isVerboseModeEnabled: false,
                                     environment: Environment.current)
            }
            return settings
        }
        set {
            _sharedSettings = newValue
        }
    }
    
    // MARK: - Initializers
    
    init() {
        
    }
}
