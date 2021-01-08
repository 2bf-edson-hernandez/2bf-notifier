//
//  Int-Extension.swift
//  NotificationAgent
//
//  Created by Simone Martorelli on 8/10/20.
//  Copyright © 2020 IBM Inc. All rights reserved
//  SPDX-License-Identifier: Apache2.0
//

import Foundation

extension Int {
    var timeFormattedString: String {
        let seconds = self % 60
        let minutes = (self / 60) % 60
        let hours = (self / 3600)

        return String(format: "%0.2d:%0.2d:%0.2d", hours, minutes, seconds)
    }
}
