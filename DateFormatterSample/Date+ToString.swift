//
//  Date+ToString.swift
//  DateFormatterSample
//
//  Created by satoshi.marumoto on 2020/04/01.
//  Copyright © 2020 satoshi.marumoto. All rights reserved.
//

import Foundation

extension Date {
    
    func toString(_ dateFormat: DateFormater) -> String {
        
        let formatter = DateFormatter()
        formatter.dateStyle = .full
        formatter.timeStyle = .none
        let jpLocale = Locale(identifier: "ja_JP")
        formatter.locale = jpLocale
        formatter.dateFormat = dateFormat.rawValue
        return formatter.string(from: self)
    }
    
    func toStringUsingTemplate(template: String = "ydMMMEEE") -> String {
        
        let dateFormater = DateFormatter()
        let jpLocale = Locale(identifier: "ja_JP")
        dateFormater.dateFormat = DateFormatter.dateFormat(
            fromTemplate: template,
            options: 0,
            locale: jpLocale
        )
        return dateFormater.string(from: self)
    }
}
