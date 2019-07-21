//
//  TravelViewController.swift
//  GT_Trader_iOS
//
//  Created by Gear Kim on 7/21/19.
//  Copyright © 2019 Kibeom Kim. All rights reserved.
//

import UIKit

class TravelViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    @IBOutlet weak var pickerView: UIPickerView!
    
    let locations = ["BobbyDodd", "CollegeOfComputing", "CRC", "CULC", "FreshmanDorms", "GreekHouses", "North Ave Dining", "StudentCenter", "TechSquare", "TechTower"]
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return locations[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return locations.count
    }



}
