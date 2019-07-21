//
//  Agreement.swift
//  Agreements
//
//  Created by Aleksey Rochev on 21.07.2019.
//  Copyright © 2019 Rochev Studio. All rights reserved.
//

import Foundation

struct Agreement {
    let description: String
    let subtext: String
    let status: ColoredIndicator.Status
    let agreements: [Agreement]
    let beginDate: String
    let endDate: String
}
