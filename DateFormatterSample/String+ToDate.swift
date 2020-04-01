//
//  String+ToDate.swift
//  DateFormatterSample
//
//  Created by satoshi.marumoto on 2020/04/01.
//  Copyright © 2020 satoshi.marumoto. All rights reserved.
//

import UIKit

extension String {
    
    func toDate(_ dateFormat: DateFormater) -> Date?  {
        
        let dateFormatter = DateFormatter()
        dateFormatter.locale = NSLocale(localeIdentifier: "ja_JP") as Locale?
        dateFormatter.timeStyle = .short
        dateFormatter.dateStyle = .short
        dateFormatter.dateFormat = dateFormat.rawValue
        
        return dateFormatter.date(from: self)
    }
}
