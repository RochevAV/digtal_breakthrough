//
//  String+Main.swift
//  Agreements
//
//  Created by Aleksey Rochev on 21.07.2019.
//  Copyright © 2019 Rochev Studio. All rights reserved.
//

import Foundation

extension String {
    enum Main { }
}

extension String.Main {
    enum Storyboard {
        func description() -> String {
            return "Storyboard"
        }
    }
    enum Segue { }
    enum BaseViewController { }
    enum Cell { }
}

extension String.Main.Storyboard {
    
    static var main: String {
      return "Main"
    }

    static var Searching: String {
        return "Searching"
    }

    static var Profile: String {
        return "Profile"
    }

}

extension String.Main.Segue {
    
    static var searchAgreements: String {
        return "showAgreemetsSegue"
    }

    static var searchUsers: String {
        return "showUsersSegue"
    }
    
    static var detailAgreements: String {
        return "searchDetailAgreementSegue"
    }
    
    static var detailUser: String {
        return "searchDetailUserSegue"
    }

}

extension String.Main.BaseViewController {
    
    static var navigationController: String {
        return "NavigationViewController"
    }
    
}

extension String.Main.Cell {
    
    static var agreementCell: String {
        return "AgreementTableViewCell"
    }
    
    static var textViewCell: String {
        return "TextViewCell"
    }
}
