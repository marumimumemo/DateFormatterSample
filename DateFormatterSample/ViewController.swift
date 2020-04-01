//
//  ViewController.swift
//  DateFormatterSample
//
//  Created by satoshi.marumoto on 2020/04/01.
//  Copyright © 2020 satoshi.marumoto. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let now = "2020-04-01"
        print(now.toDate(.hypenYearToDay)!)
        
        let today = Date()
        print(today.toString(.yearToDay))
        
    }


}

