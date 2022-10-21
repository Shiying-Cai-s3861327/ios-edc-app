//
//  OrderSelect.swift
//  ios-edc-app
//
//  Created by 蔡释莹 on 2022/10/20.
//

import Foundation
struct OrderSelect{
    var title: String
    
    static func getOrder() -> [OrderSelect]{
        var select = [OrderSelect]()
        
        select.append(OrderSelect(title: "Dry Cleaning"))
        select.append(OrderSelect(title: "Laundry"))
        select.append(OrderSelect(title: "Wash & Fold"))
        select.append(OrderSelect(title: "Tailoring"))
        select.append(OrderSelect(title: "Shoe Repair"))
        select.append(OrderSelect(title: "Home Care"))
        select.append(OrderSelect(title: "Jackets"))
        select.append(OrderSelect(title: "Wedding"))
        select.append(OrderSelect(title: "Sports Equip."))
        
        return select
    }
}
