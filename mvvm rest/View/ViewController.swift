//
//  ViewController.swift
//  mvvm rest
//
//  Created by Karthik on 23/07/19.
//  Copyright © 2019 Karthik. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        net.formatData()
        
        net.reload = { [weak self] in
            DispatchQueue.main.async {
                self!.cv.reloadData()

            }
        }
    }
    
    let net = DataModel()
    
    @IBOutlet var cv: UICollectionView!

}

extension ViewController : UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return net.contacts.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CVCell
        cell.lbl.text = net.contacts[indexPath.row].name
        return cell
    }
    
    
}
