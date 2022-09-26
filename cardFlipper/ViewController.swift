//
//  ViewController.swift
//  cardFlipper
//
//  Created by Kazakov Danil on 26.09.2022.
//

import UIKit


class ViewController: UIViewController {
    
    var touches = 0 {
        didSet {
            touchesLabel.text = "Touches: \(touches)"
        }
    }
    
    
    @IBOutlet var touchesLabel: UILabel!
    @IBOutlet var emojiButtons: [UIButton]!
    
    
    func flip(emoji: String, button: UIButton) {
        if button.currentTitle == emoji {
            button.setTitle("", for: .normal)
            button.backgroundColor = .blue
        } else {
            button.setTitle(emoji, for: .normal)
            button.backgroundColor = .white
        }
    }

    let emojicollection = ["🦇","🐺","🦇","🐺"]

    @IBAction func ButtonsAction(_ sender: UIButton) {
        touches += 1
        if let buttonIndex = emojiButtons.firstIndex(of: sender) {
            flip(emoji: emojicollection[buttonIndex], button: sender)
        }
    }
    
}

