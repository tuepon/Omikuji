//
//  ViewController.swift
//  Omikuji
//
//  Created by SEZAX development on 09/03/2021.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var luckyLabel: UILabel!
    // First, what to do?
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        // Hyde label
        self.luckyLabel.isHidden = true
    }

    @IBAction func tapButton(_ sender: Any) {
        // Show label
        self.luckyLabel.isHidden = false
        
        // Get the random number
        let random = arc4random()%5
        
        // random 0 Best luck
        // random 1 Fair luck
        // random 2 A little luck
        // random 3 Bad luck
        // random 4 Worst luck
        if random == 0 {
            self.luckyLabel.text = "Best luck"
        } else if random == 1 {
            self.luckyLabel.text = "Fair luck"
        } else if random == 2 {
            self.luckyLabel.text = "A little luck"
        } else if random == 3 {
            self.luckyLabel.text = "Bad luck"
        } else {
            self.luckyLabel.text = "Worst luck"
        }
        
    }
    
}

