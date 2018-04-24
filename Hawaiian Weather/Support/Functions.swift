//
//  Functions.swift
//  Hawaiian Weather
//
//  Created by Iain Moncrief on 3/23/18.
//  Copyright © 2018 Iain Moncrief. All rights reserved.
//

import Foundation
import SVProgressHUD


let defaults = UserDefaults.standard

func firstOpen() -> Bool {
    
    let theCode = defaults.integer(forKey: "firstTime")
    
    if theCode == 1 {
        return false
    } else {
        defaults.set(1, forKey: "firstTime")
        return true
    }
}

func startLoadingScreen(_ message: String?) {
    
    SVProgressHUD.setDefaultMaskType(.black)
    
    let Message = message ?? "none"
    
    if Message == "none" {
        SVProgressHUD.show()
    } else {
        SVProgressHUD.show(withStatus: Message)
    }
}

func stopLoadingScreen() {
    SVProgressHUD.dismiss()
}
