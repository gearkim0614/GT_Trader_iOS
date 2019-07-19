//
//  ViewController.swift
//  GT_Trader_iOS
//
//  Created by Gear Kim on 7/19/19.
//  Copyright © 2019 Kibeom Kim. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBOutlet weak var PilotLabel: UILabel!
    
    @IBOutlet weak var EngineerLabel: UILabel!
    
    @IBOutlet weak var FighterLabel: UILabel!
    
    @IBOutlet weak var TraderLabel: UILabel!
    
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
    
    
}

