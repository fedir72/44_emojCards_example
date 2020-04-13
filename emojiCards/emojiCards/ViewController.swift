//
//  ViewController.swift
//  emojiCards
//
//  Created by fedir on 13.04.2020.
//  Copyright © 2020 fedir. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var flipCount: Int = 0 {
        didSet {
        textLabel.text = "Count: \(self.flipCount)"
          
        }
    }
    
    @IBOutlet var crdButtons: [UIButton]!
    @IBOutlet weak var newGameButton: UIButton!
    @IBOutlet weak var textLabel: UILabel!
    
    var emojiChoises = ["🐠","🐳","🐈","🐠","🐈","🐳"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
   
    @IBAction func newGameActionButton(_ sender: UIButton) {
        flipCount = 0
        
    }
    
 
    @IBAction func button01Action(_ sender: UIButton) {
        flipCount+=1
        if let cardnumber = crdButtons.firstIndex(of: sender) {
            changeState(withEmoji: emojiChoises[cardnumber], on: sender)
        }
    }
    
    func changeState(withEmoji emoji: String , on button: UIButton ) {
        if button.currentTitle == emoji {
            button.setTitle("", for: UIControl.State.normal)
            button.backgroundColor = #colorLiteral(red: 0.9372549057, green: 0.3490196168, blue: 0.1921568662, alpha: 1)
        }else{
            button.setTitle(emoji, for: UIControl.State.normal)
            button.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        }
        
    }
    
    
}

