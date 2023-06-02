//
//  TabBarViewController.swift
//  HARIBO
//
//  Created by 김주은 on 2023/06/02.
//

import UIKit

class TabBarViewController: UITabBarController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let homeVC = HomeViewController()
        let outingVC = OutingViewController()
        let statusVC = StatusViewController()
                
        homeVC.tabBarItem = UITabBarItem(title: "홈", image: UIImage(systemName: "house.fill"), selectedImage: nil)
        outingVC.tabBarItem = UITabBarItem(title: "외출하기", image: UIImage(systemName: "viewfinder"), selectedImage: nil)
        statusVC.tabBarItem = UITabBarItem(title: "외출현황", image: UIImage(systemName: "door.left.hand.open"), selectedImage: nil)
        
        tabBar.tintColor = .orange
        tabBar.backgroundColor = .white
                
        let navigationHome = UINavigationController(rootViewController: homeVC)
        let navigationOuting = UINavigationController(rootViewController: outingVC)
        let navigationStatus = UINavigationController(rootViewController: statusVC)
                
        setViewControllers([navigationHome, navigationOuting, navigationStatus], animated: false)
    }
}
