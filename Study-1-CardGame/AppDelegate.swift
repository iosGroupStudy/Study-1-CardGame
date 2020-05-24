//
//  AppDelegate.swift
//  Hi
//
//  Created by 김동욱 on 2020/05/18.
//  Copyright © 2020 sanichdaniel. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    
    // 개념: 앱의 시작점. 앱이 실행되기 직전에 불린다.
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        window = UIWindow()
        let vc = ViewController()
        window?.rootViewController = vc
        window?.makeKeyAndVisible()
        return true
    }
}

