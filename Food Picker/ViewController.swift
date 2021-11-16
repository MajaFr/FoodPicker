//
//  ViewController.swift
//  Food Picker
//
//  Created by Marzena Frąk on 15/11/2021.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var todayChoiceLabel: UILabel!
    @IBOutlet weak var foodTypeLabel: UILabel!
    @IBOutlet weak var chooseButton: UIButton!
    
    let foodTypes: [String] = ["American", "Mexican", "Italian", "Turkish", "Greek", "Pierogi", "Polish", "French", "Japanese", "Chinese"]
    

    @IBAction func didTapChooseButton(_ sender: Any) {
        todayChoiceLabel.isHidden = false
        foodTypeLabel.isHidden = false
        
        chooseButton.setTitle("Choose Food Again", for: .normal)
        
        let foodTypesCount = UInt32(foodTypes.count)
        
        let randomNumber: Int = Int(arc4random_uniform(foodTypesCount))
        
        let food = foodTypes[randomNumber]
        
        foodTypeLabel.text = food

    }
    
}

