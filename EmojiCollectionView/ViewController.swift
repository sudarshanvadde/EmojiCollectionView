//
//  ViewController.swift
//  EmojiCollectionView
//
//  Created by Sundir Talari on 12/04/18.
//  Copyright © 2018 Sundir Talari. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    var items = [UIImage(named: "Cat"),UIImage(named: "Horse"),UIImage(named: "Monkey"),UIImage(named: "Wolf"),UIImage(named: "Penguin"),UIImage(named: "Sheep"),UIImage(named: "Rabbit"),]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return items.count
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "customCell", for: indexPath) as! CollectionViewCell
        cell.imageView.image = items[indexPath.row]
        
        cell.view.layer.cornerRadius = 50
        cell.view.layer.borderColor = UIColor.lightGray.cgColor
        cell.view.layer.borderWidth = 3
        cell.view.clipsToBounds = true
        cell.view.contentMode = .scaleAspectFill
        
       
     
        return cell
    }


}

