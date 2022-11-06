//
//  PricingDryCleaningTab.swift
//  ios-edc-app
//  Dry Cleaning subview
//  Created by Shiying Cai on 2022/10/24.
//

import SwiftUI

struct PricingDryCleaningTab: View {
    @State private var selectedValue = 0
    
    var body: some View {
        VStack(spacing: 15){
            // A Picker for Standard Items and Special Items
            HStack{
                Picker("", selection: $selectedValue){
                    Text("Standard Items")
                        .tag(0)
                    Text("Special Items")
                        .tag(1)
                }
                .font(.custom("SF Pro Display Semibold", size: 16))
                .pickerStyle(SegmentedPickerStyle())
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            
            if(selectedValue == 1){
                DryCleaningSpecialView()
            }else{
                DryCleaningStandardView()
            }
        }
        .padding(10)
        .background(.white)
    }
}

struct DryCleaningStandardView: View{
    @State var qty_blouse = ""
    @State var qty_coat = ""
    @State var qty_downJacket = ""
    @State var qty_pleated = ""
    @State var qty_silkDress = ""
    @State var qty_silkBeadedDress = ""
    @State var qty_linedPants = ""
    @State var qty_silkPants = ""
    @State var qty_polo = ""
    
    // For Standard Items checkbox
    @State private var checked1 = false
    @State private var checked2 = false
    @State private var checked3 = false
    @State private var checked4 = false
    @State private var checked5 = false
    @State private var checked6 = false
    @State private var checked7 = false
    @State private var checked8 = false
    @State private var checked9 = false
    var body: some View{
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
                        MediumCheckBoxView(checked: $checked6)
                        MediumCheckBoxView(checked: $checked7)
                        MediumCheckBoxView(checked: $checked8)
                        MediumCheckBoxView(checked: $checked9)
                    }
                    HStack(alignment: .top, spacing: 30){
                        VStack(alignment: .leading, spacing: 20){
                            Text("Item")
                                .font(.custom("SF Pro Display Semibold", size: 16))
                                .foregroundColor(Color("LinkColor"))
                            Text("Blouse")
                            Text("Coat")
                            Text("Down Jacket")
                            Text("Pleated / Lined Dress")
                            Text("Silk / Beaded Dress")
                            Text("Silk Beaded Dress")
                            Text("Lined Silk Pants")
                            Text("Plain Silk Pants")
                            Text("Polo/Golf Shirt")
                        }
                        VStack(alignment: .leading, spacing: 20){
                            Text("Price")
                                .font(.custom("SF Pro Display Semibold", size: 16))
                                .foregroundColor(Color("LinkColor"))
                            Text("$7.99")
                            Text("$9.99")
                            Text("$24.99")
                            Text("$34.99")
                            Text("$15.99")
                            Text("$19.99")
                            Text("$24.99")
                            Text("$34.99")
                            Text("$8.49")
                        }
                        VStack(alignment: .leading, spacing: 16){
                            Text("Qty")
                                .font(.custom("SF Pro Display Semibold", size: 16))
                                .foregroundColor(Color("LinkColor"))
                            QtyTextField(qty: $qty_blouse)
                            QtyTextField(qty: $qty_coat)
                            QtyTextField(qty: $qty_downJacket)
                            QtyTextField(qty: $qty_pleated)
                            QtyTextField(qty: $qty_silkDress)
                            QtyTextField(qty: $qty_silkBeadedDress)
                            QtyTextField(qty: $qty_linedPants)
                            QtyTextField(qty: $qty_silkPants)
                            QtyTextField(qty: $qty_polo)
                        }
                    }

                }
            }
            .font(.custom("SF Pro Display Medium", size: 16))
        }
    }
}

struct DryCleaningSpecialView: View{
    @State var qty_gooseJacket = ""
    @State var qty_leatherJacket = ""
    @State var qty_suedeJacket = ""
    @State var qty_handBag = ""
    @State var qty_gown = ""
    @State var qty_weddingDress = ""
    // For Special Items checkbox
    @State private var checked1 = false
    @State private var checked2 = false
    @State private var checked3 = false
    @State private var checked4 = false
    @State private var checked5 = false
    @State private var checked6 = false
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
                        MediumCheckBoxView(checked: $checked6)
                    }
                    HStack(alignment: .top, spacing: 30){
                        VStack(alignment: .leading, spacing: 20){
                            Text("Item")
                                .font(.custom("SF Pro Display Semibold", size: 16))
                                .foregroundColor(Color("LinkColor"))
                            Text("Canada Goose Jacket")
                            Text("Leather Jacket")
                            Text("Suede Jacket")
                            Text("Hand Bags")
                            Text("Gown")
                            Text("Wedding Dress")
                        }
                        VStack(alignment: .leading, spacing: 20){
                            Text("Price")
                                .font(.custom("SF Pro Display Semibold", size: 16))
                                .foregroundColor(Color("LinkColor"))
                            Text("$69.99+")
                            Text("$74.99+")
                            Text("$49.99+")
                            Text("$47.99+")
                            Text("$54.99+")
                            Text("$350.00+")
                        }
                        VStack(alignment: .leading, spacing: 16){
                            Text("Qty")
                                .font(.custom("SF Pro Display Semibold", size: 16))
                                .foregroundColor(Color("LinkColor"))
                            QtyTextField(qty: $qty_gooseJacket)
                            QtyTextField(qty: $qty_leatherJacket)
                            QtyTextField(qty: $qty_suedeJacket)
                            QtyTextField(qty: $qty_handBag)
                            QtyTextField(qty: $qty_gown)
                            QtyTextField(qty: $qty_weddingDress)
                        }
                    }

                }
            }
            .font(.custom("SF Pro Display Medium", size: 16))
        }
    }
}


struct PricingDryCleaningTab_Previews: PreviewProvider {
    static var previews: some View {
        PricingDryCleaningTab()
        DryCleaningStandardView()
        DryCleaningSpecialView()
    }
}
