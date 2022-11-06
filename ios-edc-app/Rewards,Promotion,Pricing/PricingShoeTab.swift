//
//  PricingShoeTab.swift
//  ios-edc-app
//  Shoe Repair subview
//  Created by Shiying Cai on 2022/11/2.
//

import SwiftUI

struct PricingShoeTab: View {
    @State var qty_shoe = ""
    @State var qty_heel = ""
    @State var qty_clean = ""
    
    @State private var checked1 = false
    @State private var checked2 = false
    @State private var checked3 = false
    @State private var checked4 = false
    
    @Binding var contactAlert: Bool
    var body: some View {
        
        ZStack {
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
                        }
                        HStack(alignment: .top, spacing: 30){
                            VStack(alignment: .leading, spacing: 20){
                                Text("Item")
                                    .font(.custom("SF Pro Display Semibold", size: 16))
                                    .foregroundColor(Color("LinkColor"))
                                Text("Shoe Shine")
                                Text("Heel Tip Repair")
                                Text("Clean & Restore")
                                Text("Shoe Repairs")
                            }
                            VStack(alignment: .leading, spacing: 20){
                                Text("Price")
                                    .font(.custom("SF Pro Display Semibold", size: 16))
                                    .foregroundColor(Color("LinkColor"))
                                Text("$14.00")
                                Text("$24.99+")
                                Text("$49.99+")
                                Button(action: {
                                    withAnimation{
                                        self.contactAlert.toggle()
                                    }
                                }, label: {
                                    Text("Contact Us")
                                        .underline()
                                        .foregroundColor(Color("LinkColor"))
                                })
                            }
                            VStack(alignment: .leading, spacing: 16){
                                Text("Qty")
                                    .font(.custom("SF Pro Display Semibold", size: 16))
                                    .foregroundColor(Color("LinkColor"))
                                QtyTextField(qty: $qty_shoe)
                                QtyTextField(qty: $qty_heel)
                                QtyTextField(qty: $qty_clean)
                        }

                    }
                }
                .font(.custom("SF Pro Display Medium", size: 16))
            }
            }
            
            
        }
        
    }
}

struct PricingShoeTab_Previews: PreviewProvider {
    struct PricingShoeTabHolder: View {
    @State var contactAlert = false

    var body: some View {
        PricingShoeTab(contactAlert: $contactAlert)
        }
    }
    static var previews: some View {
        PricingShoeTabHolder()
    }
}
