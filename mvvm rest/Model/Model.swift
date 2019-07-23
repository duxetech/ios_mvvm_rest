//
//  Model.swift
//  mvvm rest
//
//  Created by Karthik on 23/07/19.
//  Copyright © 2019 Karthik. All rights reserved.
//

import Foundation


struct Contact : Codable {
    let contacts : [Contacts]
}
struct Contacts : Codable {
    let name : String
    let email : String
}
