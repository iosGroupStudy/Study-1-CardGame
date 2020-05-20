//
//  ViewController.swift
//  Study-1-CardGame
//
//  Created by 김동욱 on 2020/05/20.
//  Copyright © 2020 sanichdaniel. All rights reserved.
//

// UI 관련 FrameWork로 UI 관련된 작업을 할때 항상 import 한다.
// `UI`로 시작하는 파일을 쓰려면 무조건 import 된다고 보면된다.
import UIKit

// 앱에서 한 화면의 단위라 생각하자.
// ViewController는 한 화면의 뷰를 책임진다.
class ViewController: UIViewController {
    
    let cardButton = UIButton()

    // viewController가 만들어지고, viewController의 view가 메모리에 올라갈때 불린다.
    // viewController 생명주기에서 제일 먼저 불리고
    // viewController가 만들어질때 딱 1번 불린다.
    override func viewDidLoad() {
        super.viewDidLoad()
        // 이 ViewController의 view위에 얹는다.
        // addSubview를 해주지 않으면 화면에 안보인다!
        self.view.addSubview(cardButton)
    }
    
}

