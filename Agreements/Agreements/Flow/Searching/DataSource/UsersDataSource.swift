//
//  UsersDataSource.swift
//  Agreements
//
//  Created by Aleksey Rochev on 21.07.2019.
//  Copyright © 2019 Rochev Studio. All rights reserved.
//

import Foundation

final class UsersDataSource {
    static var users = {
        return [User(firstName: "Иванов", lastName: "Петр"),
        User(firstName: "Петров", lastName: "Майк"),
        User(firstName: "Сидоров", lastName: "Сергей"),
        User(firstName: "Иванов", lastName: "Павел"),
        User(firstName: "Иванов", lastName: "Илья")]
    }
}
