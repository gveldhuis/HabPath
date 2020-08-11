//
//  NoSmokeControllerViewController.swift
//  HabitUp
//
//  Created by Grant Veldhuis on 8/4/20.
//  Copyright © 2020 Grant Veldhuis. All rights reserved.
//

import UIKit

class NoSmokeControllerViewController: UIViewController {

    @IBOutlet weak var lengthLabel: UILabel!
    @IBAction func lengthSlider(_ sender: UISlider) {
        
        if sender.value < 20 {
           lengthLabel.text = "< 1 month"
        }
        else if sender.value > 20 && sender.value < 40 {
            lengthLabel.text = "1-6 months"
        }
        else if sender.value > 40 && sender.value < 60 {
            lengthLabel.text = "6-12 months"
        }
        else if sender.value > 60 && sender.value < 80 {
            lengthLabel.text = "1-2 years"
        }
        else {
            lengthLabel.text = "2+ years"
        }
    }
    
    
    @IBOutlet weak var oftenLabel: UILabel!
    @IBAction func oftenSlider(_ sender: UISlider) {
        
        if sender.value < 20 {
            oftenLabel.text = "Once a day"
        }
        else if sender.value > 20 && sender.value < 40 {
            oftenLabel.text = "2 times a day"
        }
        else if sender.value > 40 && sender.value < 60 {
            oftenLabel.text = "3 times a day"
        }
        else if sender.value > 60 && sender.value < 80 {
            oftenLabel.text = "4 times a day"
        }
        else {
            oftenLabel.text = "5+ times a day"
        }
    }
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

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
