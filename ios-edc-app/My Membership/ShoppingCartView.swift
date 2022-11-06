//
//  ShoppingCartView.swift
//  ios-edc-app
//  Shopping Cart View for current orders
//  Created by Shiying Cai on 2022/9/24.
//

import SwiftUI

struct ShoppingCartView: View {
    @State private var btnCurrentIsClick = true
    @State private var btnPastIsClick = false
    @State private var btnPlanIsClick = false
    
    var body: some View {
        MyScheduleView(btnCurrentIsClick: $btnCurrentIsClick, btnPastIsClick: $btnPastIsClick, btnPlanIsClick: $btnPlanIsClick)
    }
}

struct ShoppingCartView_Previews: PreviewProvider {
    static var previews: some View {
        ShoppingCartView()
    }
}
