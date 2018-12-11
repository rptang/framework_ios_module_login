//
//  Target_LoginModule.swift
//  LoginModule
//
//  Created by 唐瑞鹏 on 2018/12/10.
//  Copyright © 2018年 rptang. All rights reserved.
//

import UIKit

@objc class Target_LoginModule: NSObject {
    
    @objc func Action_Extension_ViewController(_ params:NSDictionary) -> UIViewController {
        if let callback = params["callback"] as? (String) -> Void {
            callback("success")
        }
        
        print("Action_Extension_ViewController")
        
        let aViewController = HomeViewController()
        return aViewController
    }
    
    @objc func Action_Category_ViewController(_ params:NSDictionary) -> UIViewController {
        
        if let block = params["callback"] {
            
            typealias CallbackType = @convention(block) (NSString) -> Void
            let blockPtr = UnsafeRawPointer(Unmanaged<AnyObject>.passUnretained(block as AnyObject).toOpaque())
            let callback = unsafeBitCast(blockPtr, to: CallbackType.self)
            
            callback("success")
        }
        
        let aViewController = ViewController()
        return aViewController
    }
}
