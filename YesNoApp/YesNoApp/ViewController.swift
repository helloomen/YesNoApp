//
//  ViewController.swift
//  YesNoApp
//
//  Created by Omen on 12.07.2023.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var answerLabel: UILabel!
    @IBOutlet weak var answerButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        answerLabel.highlightedTextColor = .magenta
        self.answerLabel.isHighlighted = true
        answerButton.setTitleColor(.cyan, for: .selected)
    }
    
    @IBAction func answerButtonAction(_ sender: Any) {
        let answer = Bool.random()
        answerLabel.text = ""
        self.answerButton.isSelected = true
        self.answerButton.configuration?.buttonSize = .large
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
            self.answerLabel.text = answer ? "YES" : "NO"
            self.answerButton.configuration?.buttonSize = .medium
        }
    }
    
}
