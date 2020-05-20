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

// 앱에서 한 화면의 뷰를 책임지는 녀석: ViewController
class ViewController: UIViewController {
    
    // let vs var, let은 한번 생성되고 다시 재할당 안됨
    // ex.
    // let button = UIButton()
    // button = UIButton() -> 안됨 var로 선언해야됨.
    
    let cardButton = UIButton()

    // viewController가 만들어지고, viewController의 view가 메모리에 올라갈때 불린다.
    // viewController 생명주기에서 제일 먼저 불리고
    // viewController가 만들어질때 딱 1번 불린다.
    override func viewDidLoad() {
        super.viewDidLoad()
        // 이 ViewController의 view위에 얹는다.
        // addSubview를 해주지 않으면 화면에 안보인다!
        self.view.addSubview(cardButton)
        cardButton.backgroundColor = .white
        cardButton.setTitle("🐡", for: .normal)
        cardButton.titleLabel?.font = UIFont.boldSystemFont(ofSize: 50)
        // 단순히 addSubview한다고 화면에 보이는것이 아니라
        // `위치`까지 정해줘야한다
        // 여기서는 좌표를 주어서 위치를 정해주었다.
        // cardButton의 frame이라는 값에다가 x,y, width, height 값을 주었다.
        // frame을 설명하기 앞서 superView의 개념을 설명하면
        // superView = 부모 뷰 = 자신이 addSubview 된 뷰 = viewController의 뷰
        // framed이란 부모 뷰 기준으로 자기 위치, x,y 좌표와 넓이 높이 주었다.
        cardButton.frame = CGRect(x: 100, y: 100, width: 80, height: 120)
    }
    
}

