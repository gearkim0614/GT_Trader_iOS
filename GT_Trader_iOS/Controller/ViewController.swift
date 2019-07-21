//
//  ViewController.swift
//  GT_Trader_iOS
//
//  Created by Gear Kim on 7/19/19.
//  Copyright © 2019 Kibeom Kim. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {

    //var player: Player?
    
    let difficulty = ["Beginner", "Easy", "Normal", "Hard", "Impossible"]
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return difficulty[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return difficulty.count
    }
    
    func createPlayer(name: String, pilot: Int, fighter: Int, trader: Int, engineer: Int) -> Bool {
        
        if pilot + fighter + trader + engineer == 16 && name != "" {
            //self.player = Player(name: "name", pilot: 4, trader: 4, fighter: 4, engineer: 4)
            return true
        } else {
            return false
        }
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBOutlet weak var nameField: UITextField!
    
    @IBOutlet weak var PilotLabel: UILabel!
    
    @IBOutlet weak var EngineerLabel: UILabel!
    
    @IBOutlet weak var FighterLabel: UILabel!
    
    @IBOutlet weak var TraderLabel: UILabel!
    
    @IBOutlet weak var pickerView: UIPickerView!
    
    @IBAction func PilotSlider(_ sender: UISlider) {
        PilotLabel.text = String(Int(sender.value))
    }
    @IBAction func EngineerSlider(_ sender: UISlider) {
        EngineerLabel.text = String(Int(sender.value))
    }
    
    @IBAction func FighterSlider(_ sender: UISlider) {
        FighterLabel.text = String(Int(sender.value))
    }
    
    @IBAction func TraderSlider(_ sender: UISlider) {
        TraderLabel.text = String(Int(sender.value))
    }
    
    

    @IBAction func createPlayer(_ sender: UIButton) {
        if let name = nameField.text, let pilotVal = Int(PilotLabel.text!), let fighterVal = Int(FighterLabel.text!), let traderVal = Int(TraderLabel.text!), let engineerVal = Int(EngineerLabel.text!) {
            if createPlayer(name: name, pilot: pilotVal, fighter: fighterVal, trader: traderVal, engineer: engineerVal) {
                //self.performSegue(withIdentifier: "createPlayer", sender: self)
            } else {
                let alert = UIAlertController(title: "Invalid Input", message: "Please type in a name and make sure your points add up to 16", preferredStyle: .alert)
                alert.addAction(UIAlertAction(title: "Ok", style: .default, handler: nil))
                self.present(alert, animated: true, completion: nil)
            }
            
        }
        
        
    }
    
    
}

