//
//  Agreement.swift
//  Agreements
//
//  Created by Aleksey Rochev on 21.07.2019.
//  Copyright © 2019 Rochev Studio. All rights reserved.
//

import Foundation

struct Agreement {
    
    enum Status {
        case clear
        case inWork
        case done
        case warning
    }
    
    let description: String
    let subtext: String
    let status: Status
    let agreements: [Agreement]
    let beginDate: String
    let endDate: String
}
