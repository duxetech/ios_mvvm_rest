//
//  rest.swift
//  mvvm rest
//
//  Created by Karthik on 23/07/19.
//  Copyright © 2019 Karthik. All rights reserved.
//

import Foundation

class Server {
    
    let url = URL(string: "https://api.androidhive.info/contacts/")
    
    
    
    func getData(completion : @escaping ([Contacts])->() ) {
        URLSession.shared.dataTask(with: url!) {
            data,response, error in
            do {
                let d = try JSONDecoder().decode(Contact.self, from: data!)
                completion(d.contacts)
            }
            catch{
                print(error)
            }
        }.resume()
    }
    
    
    
}
