//
//  ViewController.swift
//  HellaCollectionCells
//
//  Created by Flatiron School on 10/6/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class HellaViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {

    @IBOutlet weak var HellaView: UICollectionView!
    
    override func viewDidLoad() {
    super.viewDidLoad()
        HellaView.delegate = self
        HellaView.dataSource = self
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 100
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "colorCell", for: indexPath)
        print(indexPath.item)
        switch indexPath.item {
        case 1,2,3,5,8,13,21,34,55,89:
            cell.backgroundColor = UIColor.purple
        default:
            cell.backgroundColor = UIColor.yellow
        }
        
        return cell
    }
    
    
    
}

