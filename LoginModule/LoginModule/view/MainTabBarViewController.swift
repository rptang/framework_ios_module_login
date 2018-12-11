//
//  MainTabBarViewController.swift
//  LoginModule
//
//  Created by 唐瑞鹏 on 2018/12/11.
//  Copyright © 2018年 rptang. All rights reserved.
//

import UIKit

class MainTabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //创建tabbar的子控制器
        self.creatSubViewControllers()
    }
    
    func creatSubViewControllers(){
        
        let firstVC = HomeViewController()
        firstVC.title = "首页"
        let navi0 = UINavigationController(rootViewController:firstVC)
        navi0.tabBarItem.title = "首页"
//        navi0.tabBarItem.image = UIImage (named:"sy")
//        navi0.tabBarItem.selectedImage = UIImage(named:"sy1")
        
        let secondVC = MineViewController()
        secondVC.title = "我的"
        let navi1 = UINavigationController(rootViewController:secondVC)
        navi1.tabBarItem.title = "我的"
//        navi1.tabBarItem.image = UIImage (named:"wd")
//        navi1.tabBarItem.selectedImage = UIImage(named:"wd1")
        
        
        tabBar.tintColor = UIColor.orange
        let tabArray = [navi0,navi1]
        self.viewControllers = tabArray
    }
}
