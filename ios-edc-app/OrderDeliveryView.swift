//
//  OrderDeliveryView.swift
//  ios-edc-app
//
//  Created by 蔡释莹 on 2022/10/9.
//

import SwiftUI

struct OrderDeliveryView: View {
    var body: some View {
        ZStack{
            Color("BackgroundColor")
                .ignoresSafeArea()
            
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
        }
        .toolbar{
            ToolbarItem(placement: .navigationBarLeading) {
                Text("New Order")
                    .font(.naviLable)
                    .foregroundColor(Color("NaviTextColor"))
            }
        }
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct OrderDeliveryView_Previews: PreviewProvider {
    static var previews: some View {
        OrderDeliveryView()
    }
}
