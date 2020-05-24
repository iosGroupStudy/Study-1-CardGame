//
//  CardButton.swift
//  Study-1-CardGame
//
//  Created by 김동욱 on 2020/05/24.
//  Copyright © 2020 sanichdaniel. All rights reserved.
//

import UIKit

class CardButton: UIButton {
    
    private let dimView = UIView()
    
    override var isHighlighted: Bool {
        didSet {
            dimView.isHidden = !isHighlighted
        }
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview(dimView)
        dimView.backgroundColor = UIColor.black.withAlphaComponent(0.1)
        dimView.snp.makeConstraints { (maker) in
            maker.edges.equalToSuperview()
        }
        dimView.isHidden = true
        layer.cornerRadius = 10
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override var intrinsicContentSize: CGSize {
        return CGSize(width: 90, height: 130)
    }
    
}

