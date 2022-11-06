//
//  PricingTailoringTab.swift
//  ios-edc-app
//  Tailoring subview
//  Created by Shiying Cai on 2022/11/2.
//

import SwiftUI

struct PricingTailoringTab: View {
    @State var qty_buttons = ""
    @State var qty_pants = ""
    @State var qty_skirt = ""
    @State var qty_minorRepair = ""
    @State var qty_majorRepair = ""
    
    @State private var checked1 = false
    @State private var checked2 = false
    @State private var checked3 = false
    @State private var checked4 = false
    @State private var checked5 = false
    var body: some View {
        VStack(alignment: .leading){
            Group{
                HStack(spacing: 15){
                    VStack(alignment: .leading, spacing: 20){
                        Spacer()
                            .frame(height: 20)
                        MediumCheckBoxView(checked: $checked1)
                        MediumCheckBoxView(checked: $checked2)
                        MediumCheckBoxView(checked: $checked3)
                        MediumCheckBoxView(checked: $checked4)
                        MediumCheckBoxView(checked: $checked5)
                    }
                    HStack(alignment: .top, spacing: 30){
                        VStack(alignment: .leading, spacing: 20){
                            Text("Item")
                                .font(.custom("SF Pro Display Semibold", size: 16))
                                .foregroundColor(Color("LinkColor"))
                            Text("Buttons")
                            Text("Hemming-Pants")
                            Text("Hemming-Skirt/Dress")
                            Text("Minor Clothing Repair")
                            Text("Major Clothing Repair")
                        }
                        VStack(alignment: .leading, spacing: 20){
                            Text("Price")
                                .font(.custom("SF Pro Display Semibold", size: 16))
                                .foregroundColor(Color("LinkColor"))
                            Text("$5.50+")
                            Text("$12.99")
                            Text("$19.99")
                            Text("$19.99")
                            Text("$29.00+")
                        }
                        VStack(alignment: .leading, spacing: 16){
                            Text("Qty")
                                .font(.custom("SF Pro Display Semibold", size: 16))
                                .foregroundColor(Color("LinkColor"))
                            QtyTextField(qty: $qty_buttons)
                            QtyTextField(qty: $qty_pants)
                            QtyTextField(qty: $qty_skirt)
                            QtyTextField(qty: $qty_minorRepair)
                            QtyTextField(qty: $qty_majorRepair)
                    }

                }
            }
            .font(.custom("SF Pro Display Medium", size: 16))
        }
    }
    }
}

struct PricingTailoringTab_Previews: PreviewProvider {
    static var previews: some View {
        PricingTailoringTab()
    }
}
