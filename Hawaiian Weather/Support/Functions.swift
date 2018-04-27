//
//  Functions.swift
//  Hawaiian Weather
//
//  Created by Iain Moncrief on 3/23/18.
//  Copyright © 2018 Iain Moncrief. All rights reserved.
//

import Foundation
import SVProgressHUD
import OpenWeatherKit


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
    
    let Message = message ?? ""
    
    if Message == "" {
        SVProgressHUD.show()
    } else {
        SVProgressHUD.show(withStatus: Message)
    }
}

func stopLoadingScreen() {
    SVProgressHUD.dismiss()
}

func doubleToString(_ input: Double) -> String {
    return String(format:"%f", input)
}

var stationTest = Station(location: global.userLocation, true)
func locationHasBeenUpdated() {
    stationTest.updateCurrent()
    
}

func debug(_ output: String) {
    if global.debug == true {
        print(output)
    }
}
