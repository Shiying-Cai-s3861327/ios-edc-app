//
//  PricingSportTab.swift
//  ios-edc-app
//  Sport Equip. subview
//  Created by Shiying Cai on 2022/11/3.
//

import SwiftUI

struct PricingSportTab: View {
    @State var qty_football = ""
    @State var qty_hockey = ""
    
    @State private var checked1 = false
    @State private var checked2 = false
    var body: some View{
        VStack(alignment: .leading){
            Group{
                HStack(spacing: 15){
                    VStack(alignment: .leading, spacing: 40){
                        Spacer()
                            .frame(height: 5)
                        MediumCheckBoxView(checked: $checked1)
                        MediumCheckBoxView(checked: $checked2)
                    }
                    HStack(alignment: .top, spacing: 30){
                        VStack(alignment: .leading, spacing: 20){
                            Text("Item")
                                .font(.custom("SF Pro Display Semibold", size: 16))
                                .foregroundColor(Color("LinkColor"))
                            Text("Football/Bunker Equiment(including bag)")
                            Text("Hockey Equipment(including bag)")
                        }
                        VStack(alignment: .leading, spacing: 40){
                            Text("Price")
                                .font(.custom("SF Pro Display Semibold", size: 16))
                                .foregroundColor(Color("LinkColor"))
                            Text("$109.99")
                            Text("$99.99")
                        }
                        VStack(alignment: .leading, spacing: 35){
                            Text("Qty")
                                .font(.custom("SF Pro Display Semibold", size: 16))
                                .foregroundColor(Color("LinkColor"))
                            QtyTextField(qty: $qty_football)
                            QtyTextField(qty: $qty_hockey)
                        }
                    }

                }
            }
            .font(.custom("SF Pro Display Medium", size: 16))
        }
    }
}

struct PricingSportTab_Previews: PreviewProvider {
    static var previews: some View {
        PricingSportTab()
    }
}
