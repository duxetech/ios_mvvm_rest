//
//  Data.swift
//  mvvm rest
//
//  Created by Karthik on 23/07/19.
//  Copyright © 2019 Karthik. All rights reserved.
//

import Foundation

class DataModel {
   
    let json = Server()
    
    var names = [Contacts]() {
        didSet{
            reload()
        }
    }
    
    var reload = { ()->() in }
    
    func formatData() {
      
        json.getData { con in
           
            self.names = con

        }
    }
}
