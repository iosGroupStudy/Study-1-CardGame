//
//  ViewController.swift
//  Study-1-CardGame
//
//  Created by 김동욱 on 2020/05/20.
//  Copyright © 2020 sanichdaniel. All rights reserved.
//
import UIKit
import SnapKit

class ViewController: UIViewController {
    var game = Game(numberOfPairs: 6)
    
    let titlelabel = UILabel()
    
    var flipCount: Int = 0 {
        didSet {
            flipCountLabel.text = "Flip 횟수:  \(flipCount)"
        }
    }
    
    var cardButtons: [CardButton] = []
    
    let emojis = ["🐡", "🦈", "🐡", "🦈", "🐳", "🐳","🐸", "🐸","🦊","🦊", "🐼", "🐼"].shuffled()
    
    // 라벨이란. 단순한 텍스트를 나타낸다
    let flipCountLabel = UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUp()
    }
    
    func setUp() {
        titlelabel.text = "메모리 게임"
        titlelabel.font = UIFont.boldSystemFont(ofSize: 30)
        titlelabel.textColor = .orange
        view.addSubview(titlelabel)
        titlelabel.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalToSuperview().inset(30)
        }
        
        let verticalStackView = UIStackView()
        verticalStackView.axis = .vertical
        verticalStackView.alignment = .center
        verticalStackView.distribution = .fillEqually
        verticalStackView.spacing = 10
        view.addSubview(verticalStackView)
        verticalStackView.snp.makeConstraints { make in
            make.leading.trailing.equalToSuperview().inset(10)
            make.top.equalToSuperview().inset(100)
        }
        view.addSubview(verticalStackView)
        
        for _ in 1...3 {

            let stackView = UIStackView()
            verticalStackView.addArrangedSubview(stackView)
            stackView.axis = .horizontal
            stackView.alignment = .center
            stackView.distribution = .fillEqually
            stackView.spacing = 10
            
            let cardButtons = [CardButton(), CardButton(), CardButton(), CardButton()]
            cardButtons.forEach { button in
                stackView.addArrangedSubview(button)
                button.backgroundColor = .systemPink
                button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 50)
                button.addTarget(self, action: #selector(self.flipCard(sender:)), for: .touchUpInside)
            }
            self.cardButtons += cardButtons
        }
        

        view.addSubview(flipCountLabel)
        flipCountLabel.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalTo(verticalStackView.snp.bottom).offset(30)
        }
        flipCountLabel.text = "\(flipCount)"
        flipCountLabel.textColor = .orange
        flipCountLabel.font = UIFont.boldSystemFont(ofSize: 30)
    }
    
    @objc func flipCard(sender: UIButton) {
        print("######", cardButtons.firstIndex(of: sender as! CardButton))
        if let index = cardButtons.firstIndex(of: sender as! CardButton) {
            game.chooseCard(at: index)
//                cardButtons[index].setTitle("", for: .normal)
//                cardButtons[index].backgroundColor = .systemPink
//            } else {
//                cardButtons[index].setTitle(emojis[index], for: .normal)
//                cardButtons[index].backgroundColor = .white
//            }
        }
        
        flipCount += 1
    }
}

