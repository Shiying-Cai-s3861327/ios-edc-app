//
//  PricingLaundryTab.swift
//  ios-edc-app
//  Laundry subview
//  Created by Shiying Cai on 2022/11/2.
//

import SwiftUI

struct PricingLaundryTab: View {
    @State var qty_shirt = ""
    @State var qty_handPressed = ""
    @State var qty_folded = ""
    
    @State private var checked1 = false
    @State private var checked2 = false
    @State private var checked3 = false
    
    var body: some View {
        VStack(spacing: 15){
            VStack(alignment: .leading){
                Group{
                    HStack(spacing: 15){
                        VStack(alignment: .leading, spacing: 40){
                            Spacer()
                                .frame(height: 10)
                            MediumCheckBoxView(checked: $checked1)
                            MediumCheckBoxView(checked: $checked2)
                            MediumCheckBoxView(checked: $checked3)
                        }
                        HStack(alignment: .top, spacing: 30){
                            VStack(alignment: .leading, spacing: 30){
                                Text("Item")
                                    .font(.custom("SF Pro Display Semibold", size: 16))
                                    .foregroundColor(Color("LinkColor"))
                                Text("Laundered Shirt")
                                Text("Laundered Shirt - Hand Pressed")
                                Text("Laundered Shirt - Folded")
                            }
                            VStack(alignment: .leading, spacing: 35){
                                Text("Price")
                                    .font(.custom("SF Pro Display Semibold", size: 16))
                                    .foregroundColor(Color("LinkColor"))
                                Text("$7.99")
                                Text("$9.99")
                                Text("$24.99")
                            }
                            VStack(alignment: .leading, spacing: 32){
                                Text("Qty")
                                    .font(.custom("SF Pro Display Semibold", size: 16))
                                    .foregroundColor(Color("LinkColor"))
                                QtyTextField(qty: $qty_shirt)
                                QtyTextField(qty: $qty_handPressed)
                                QtyTextField(qty: $qty_folded)
                            }
                        }

                    }
                }
                .font(.custom("SF Pro Display Medium", size: 16))
            }
        }
        .padding(10)
        .background(.white)
    }
}


struct PricingLaundryTab_Previews: PreviewProvider {
    static var previews: some View {
        PricingLaundryTab()
    }
}
