//
//  ViewController.swift
//  lifecounter
//
//  Created by Pragyna Naik on 4/22/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var Player1Total: UILabel!
    @IBOutlet weak var Player2Total: UILabel!
    @IBOutlet weak var Player3Total: UILabel!
    @IBOutlet weak var Player4Total: UILabel!
    @IBOutlet weak var loser: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    func changeValue(val: Int, target: Int) {
    switch target {
    case 1:
        let lifeTotal = Int(Player1Total.text!)!
        let newTotal = lifeTotal + val
        Player1Total.text = String(newTotal)
            if (newTotal <= 0) {
                loser.text = "Player 1 LOSES!"
            }
    
    
    case 2:
        let lifeTotal = Int(Player2Total.text!)!
        let newTotal = lifeTotal + val
        Player2Total.text = String(newTotal)
            if (newTotal <= 0) {
                loser.text = "Player 2 LOSES!"
            }
    
    
    case 3:
        let lifeTotal = Int(Player3Total.text!)!
        let newTotal = lifeTotal + val
        Player3Total.text = String(newTotal)
            if (newTotal <= 0) {
                loser.text = "Player 3 LOSES!"
            }
    
    
    case 4:
        let lifeTotal = Int(Player4Total.text!)!
        let newTotal = lifeTotal + val
        Player4Total.text = String(newTotal)
            if (newTotal <= 0) {
                loser.text = "Player 4 LOSES!"
            }
    
    default:
        print("Shouldn't be able to get here")
    
    }
    
    }

    @IBAction func OneNegFive(_ sender: Any) {
        changeValue(val: -5, target:1)
    }
    @IBAction func OneNeg1(_ sender: Any) {
        changeValue(val: -1, target:1)
    }
    @IBAction func OnePos1(_ sender: Any) {
        changeValue(val: 1, target:1)
    }
    @IBAction func OnePos5(_ sender: Any) {
        changeValue(val: 5, target:1)
    }
    
    @IBAction func TwoNeg5(_ sender: Any) {
        changeValue(val: -5, target:2)
    }
    
    @IBAction func TwoNeg1(_ sender: Any) {
        changeValue(val: -1, target:2)
    }
    
    @IBAction func TwoPos1(_ sender: Any) {
        changeValue(val: 1, target:2)
    }
    
    @IBAction func TwoPos5(_ sender: Any) {
        changeValue(val: 5, target:2)
    }
    
    
    @IBAction func ThreeNeg5(_ sender: Any) {
        changeValue(val: -5, target:3)
    }
    
    @IBAction func ThreeNeg1(_ sender: Any) {
        changeValue(val: -1, target:3)
    }
    
    @IBAction func ThreePos1(_ sender: Any) {
        changeValue(val: 1, target:3)
    }
    
    @IBAction func ThreePos5(_ sender: Any) {
        changeValue(val: 5, target:3)
    }
    
    
    @IBAction func FourNeg5(_ sender: Any) {
        changeValue(val: -5, target:4)
    }
    
    
    @IBAction func FourNeg1(_ sender: Any) {
        changeValue(val: -1, target:4)
    }
    
    
    @IBAction func FourPos1(_ sender: Any) {
        changeValue(val: 1, target:4)
    }
    
    @IBAction func FourPos5(_ sender: Any) {
        changeValue(val: 5, target:4)
    }
}

