//
//  AgreementsDataSource.swift
//  Agreements
//
//  Created by Aleksey Rochev on 21.07.2019.
//  Copyright © 2019 Rochev Studio. All rights reserved.
//

import Foundation

final class AgreementsDataSource {
    static var agreements = {
        return [Agreement(description: "Соглашение между участниками хакатона не грубить!",
                          subtext: "Участники хакатона",
                          status: .clear,
                          agreements: [],
                          beginDate: "20.07.2019",
                          endDate: "21.07.2019"),
                Agreement(description: "Соглашение между участниками хакатона не грубить!",
                          subtext: "Участники хакатона",
                          status: .warning,
                          agreements: [],
                          beginDate: "20.07.2019",
                          endDate: "21.07.2019"),
                Agreement(description: "Соглашение между участниками хакатона не грубить!",
                          subtext: "Участники хакатона",
                          status: .inWork,
                          agreements: [],
                          beginDate: "20.07.2019",
                          endDate: "21.07.2019"),
                Agreement(description: "Соглашение между участниками хакатона не грубить!",
                          subtext: "Участники хакатона",
                          status: .done,
                          agreements: [],
                          beginDate: "20.07.2019",
                          endDate: "21.07.2019"),
                Agreement(description: "Соглашение между участниками хакатона не грубить!",
                          subtext: "Участники хакатона",
                          status: .done,
                          agreements: [],
                          beginDate: "20.07.2019",
                          endDate: "21.07.2019"),
                Agreement(description: "Соглашение между участниками хакатона не грубить!",
                          subtext: "Участники хакатона",
                          status: .done,
                          agreements: [],
                          beginDate: "20.07.2019",
                          endDate: "21.07.2019")]
    }
}
