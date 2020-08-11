//
//  NewHabitController.swift
//  HabitUp
//
//  Created by Grant Veldhuis on 8/4/20.
//  Copyright © 2020 Grant Veldhuis. All rights reserved.
//

import UIKit

class NewHabitController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {

    @IBOutlet weak var collectionView: UICollectionView!

    
    let array:[String] = ["smoke.jpg", "beer.jpg", "exercise.jpg", "sleep.jpg"]
    let arrayNames = ["No smoking", "No drinking", "Exercising", "Sleeping"]
    
    
    
    //Number of views in collection view
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 4
    }
    
    //Populating views
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! NewHabitCollectionViewCell
       
        cell.newHabitLabel.text = arrayNames[indexPath.item]
        cell.newHabitImageView.image = UIImage(named: array[indexPath.row])
        return cell
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        collectionView.dataSource = self
        collectionView.delegate = self
        
        let itemSize = UIScreen.main.bounds.width/3
        let itemHeight = UIScreen.main.bounds.height/5
        
        let layout = UICollectionViewFlowLayout()
        //layout.sectionInset = UIEdgeInsets(top: 10, left: 5, bottom: 10, right: 5)
        layout.itemSize = CGSize(width: itemSize, height: itemHeight)
        
        layout.minimumInteritemSpacing = 0
        layout.minimumLineSpacing = 1
        
        collectionView.collectionViewLayout = layout
        
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
