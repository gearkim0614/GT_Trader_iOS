//
//  MarketViewController.swift
//  GT_Trader_iOS
//
//  Created by Gear Kim on 7/21/19.
//  Copyright © 2019 Kibeom Kim. All rights reserved.
//

import UIKit

class MarketViewController: UIViewController {
   
    var startingCredit = 1000
    var currCash = 1000
    var waterBought = 0
    var waterCost = 1
    var snackBought = 0
    var snackCost = 3
    var foodBought = 0
    var foodCost = 10
    var bowlingBought = 0
    var bowlingCost = 15
    var mealBought = 0
    var mealCost = 20
    var uberBought = 0
    var uberCost = 25
    var movieBought = 0
    var movieCost = 30
    var gtswagBought = 0
    var gtswagCost = 50
    var macbookBought = 0
    var macbookCost = 1000
    
    @IBOutlet weak var cashLabel: UILabel!
    
    
    @IBOutlet weak var waterCount: UILabel!
    @IBAction func waterStep(_ sender: UIStepper) {
        waterCount.text = Int(sender.value).description
        if currCash < waterCost {
            printError()
        } else {
            waterBought = waterCost * Int(sender.value)
            getCredit()
        }
    }
    @IBOutlet weak var snackCount: UILabel!
    @IBAction func snackStepper(_ sender: UIStepper) {
        snackCount.text = Int(sender.value).description
        if currCash < snackCost {
            printError()
        } else {
            snackBought = snackCost * Int(sender.value)
            getCredit()
        }
        
    }
    @IBOutlet weak var foodCount: UILabel!
    @IBAction func foodStepper(_ sender: UIStepper) {
        foodCount.text = Int(sender.value).description
        if currCash < foodCost {
            printError()
        } else {
            foodBought = foodCost * Int(sender.value)
            getCredit()
        }
        
    }
    @IBOutlet weak var bowlingCount: UILabel!
    @IBAction func bowlingStepper(_ sender: UIStepper) {
        bowlingCount.text = Int(sender.value).description
        if currCash < bowlingCost {
            printError()
        } else {
            bowlingBought = bowlingCost * Int(sender.value)
            getCredit()
        }
    }
    @IBOutlet weak var mealCount: UILabel!
    @IBAction func mealStepper(_ sender: UIStepper) {
        mealCount.text = Int(sender.value).description
        if currCash < mealCost {
            printError()
        } else {
            mealBought = mealCost * Int(sender.value)
            getCredit()
        }
    }
    @IBOutlet weak var uberCount: UILabel!
    @IBAction func uberStepper(_ sender: UIStepper) {
        uberCount.text = Int(sender.value).description
        if currCash < uberCost {
            printError()
        } else {
            uberBought = uberCost * Int(sender.value)
            getCredit()
        }
    }
    @IBOutlet weak var movieCount: UILabel!
    @IBAction func movieStepper(_ sender: UIStepper) {
        movieCount.text = Int(sender.value).description
        if currCash < movieCost {
            printError()
        } else {
            movieBought = movieCost * Int(sender.value)
            getCredit()
        }
    }
    @IBOutlet weak var gtswagCount: UILabel!
    @IBAction func gtswagStepper(_ sender: UIStepper) {
        gtswagCount.text = Int(sender.value).description
        if currCash < gtswagCost {
            printError()
        } else {
            gtswagBought = gtswagCost * Int(sender.value)
            getCredit()
        }
    }
    @IBOutlet weak var macbookCount: UILabel!
    @IBAction func macbookStepper(_ sender: UIStepper) {
        if currCash < macbookCost {
            printError()
        } else {
            macbookBought = macbookCost * Int(sender.value)
            getCredit()
            macbookCount.text = Int(sender.value).description
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func getCredit() {
        currCash = startingCredit - waterBought - snackBought - foodBought - bowlingBought - mealBought
            - uberBought - movieBought - gtswagBought - macbookBought
        
        cashLabel.text = String(currCash)
    }
    
    func printError() {
        let alert = UIAlertController(title: "Invalid buy", message: "You cannot buy that item. Do you have enough credits or space? Otherwise, this market might not have the item", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Ok", style: .default, handler: nil))
        self.present(alert, animated: true)
    }
}

