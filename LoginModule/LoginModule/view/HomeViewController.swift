//
//  HomeViewController.swift
//  LoginModule
//
//  Created by 唐瑞鹏 on 2018/12/11.
//  Copyright © 2018年 rptang. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        print("viewDidLoad")
        
        // Do any additional setup after loading the view.
    }
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        debugPrint("init111")
        let currentBundle = Bundle(for: type(of: self))
        let path = currentBundle.path(forResource: "framework_ios_module_login", ofType: "bundle")
        super.init(nibName: "HomeViewController", bundle: Bundle.init(path: path!))
    }
    
    /// 重载父类的init()
    init(name: String) {
        debugPrint("init222")
        let currentBundle = Bundle(for: type(of: self))
        let path = currentBundle.path(forResource: "framework_ios_module_login", ofType: "bundle")
        super.init(nibName: "HomeViewController", bundle: Bundle.init(path: path!))
    }
    
    required init?(coder aDecoder: NSCoder) {
        debugPrint("init333")
        super.init(coder: aDecoder)
    }
}
