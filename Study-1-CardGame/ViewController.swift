//
//  ViewController.swift
//  Study-1-CardGame
//
//  Created by 김동욱 on 2020/05/20.
//  Copyright © 2020 sanichdaniel. All rights reserved.
//
import UIKit

class ViewController: UIViewController {
    let label = UILabel()
    
    var flipCount: Int = 0 {
        didSet {
            flipCountLabel.text = "Flip 횟수:  \(flipCount)"
        }
    }
    
    var cardButtons: [CardButton] = []
    
    let emojis = ["🐡", "🦈", "🐡", "🦈"].shuffled()
    
    // 라벨이란. 단순한 텍스트를 나타낸다
    let flipCountLabel = UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUp()
    }
    
    func setUp() {
        let stackView = UIStackView()
        stackView.frame = CGRect(x: 20, y: 100, width: 400, height: 200)
        view.addSubview(stackView)
        stackView.axis = .horizontal
        stackView.alignment = .center
        stackView.distribution = .fillEqually
        stackView.spacing = 4
        
        cardButtons = [CardButton(), CardButton(), CardButton(), CardButton()]
        cardButtons.forEach { button in
            stackView.addArrangedSubview(button)
            button.backgroundColor = .systemPink
            button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 40)
            button.addTarget(self, action: #selector(self.flipCard(sender:)), for: .touchUpInside)
        }

        view.addSubview(flipCountLabel)
        flipCountLabel.frame = CGRect(x: 100, y: 200, width: 300, height: 1000)
        flipCountLabel.text = "\(flipCount)"
        flipCountLabel.textColor = .orange
        flipCountLabel.font = UIFont.boldSystemFont(ofSize: 30)
    }
    
    @objc func flipCard(sender: UIButton) {
        if let index = cardButtons.firstIndex(of: sender as! CardButton) {
            if cardButtons[index].currentTitle == emojis[index] {
                cardButtons[index].setTitle("", for: .normal)
                cardButtons[index].backgroundColor = .systemPink
            } else {
                cardButtons[index].setTitle(emojis[index], for: .normal)
                cardButtons[index].backgroundColor = .white
            }
        }
        
        flipCount += 1
    }
}

