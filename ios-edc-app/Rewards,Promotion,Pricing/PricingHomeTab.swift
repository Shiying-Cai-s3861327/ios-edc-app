//
//  PricingHomeTab.swift
//  ios-edc-app
//  Home Care subview
//  Created by Shiying Cai on 2022/11/2.
//

import SwiftUI

struct PricingHomeTab: View {
    @State private var selectedValue = 0
    
    var body: some View {
        VStack(spacing: 15){
            // A Picker for Standard Items and Linens Items
            HStack{
                Picker("", selection: $selectedValue){
                    Text("Standard Items")
                        .tag(0)
                    Text("Linens")
                        .tag(1)
                }
                .font(.custom("SF Pro Display Semibold", size: 16))
                .pickerStyle(SegmentedPickerStyle())
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            
            if(selectedValue == 1){
                HomeLinensView()
            }else{
                HomeStandardView()
            }
        }
        .padding(10)
        .background(.white)
    }
}

struct HomeStandardView: View{
    @State var qty_cushion = ""
    @State var qty_rug = ""
    
    @State private var checked1 = false
    @State private var checked2 = false
    var body: some View{
        VStack(alignment: .leading){
            Group{
                HStack(spacing: 15){
                    VStack(alignment: .leading, spacing: 20){
                        Spacer()
                            .frame(height: 20)
                        MediumCheckBoxView(checked: $checked1)
                        MediumCheckBoxView(checked: $checked2)
                    }
                    HStack(alignment: .top, spacing: 70){
                        VStack(alignment: .leading, spacing: 20){
                            Text("Item")
                                .font(.custom("SF Pro Display Semibold", size: 16))
                                .foregroundColor(Color("LinkColor"))
                            Text("Cushion")
                            Text("Rug")
                        }
                        VStack(alignment: .leading, spacing: 20){
                            Text("Price")
                                .font(.custom("SF Pro Display Semibold", size: 16))
                                .foregroundColor(Color("LinkColor"))
                            Text("$29.99+")
                            Text("$45.99+")
                        }
                        VStack(alignment: .leading, spacing: 16){
                            Text("Qty")
                                .font(.custom("SF Pro Display Semibold", size: 16))
                                .foregroundColor(Color("LinkColor"))
                            QtyTextField(qty: $qty_cushion)
                            QtyTextField(qty: $qty_rug)
                        }
                    }

                }
            }
            .font(.custom("SF Pro Display Medium", size: 16))
        }
    }
}

struct HomeLinensView: View{
    @State var qty_duvet = ""
    @State var qty_downDuvet = ""
    @State var qty_duvetCover = ""
    @State var qty_pillow = ""
    @State var qty_pillowCase = ""
    @State var qty_sheets = ""
    @State var qty_tableCloth = ""
    @State var qty_tablemat = ""
    
    @State private var checked1 = false
    @State private var checked2 = false
    @State private var checked3 = false
    @State private var checked4 = false
    @State private var checked5 = false
    @State private var checked6 = false
    @State private var checked7 = false
    @State private var checked8 = false
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
                    }
                    HStack(alignment: .top, spacing: 40){
                        VStack(alignment: .leading, spacing: 20){
                            Text("Item")
                                .font(.custom("SF Pro Display Semibold", size: 16))
                                .foregroundColor(Color("LinkColor"))
                            Text("Duvet/Comforter")
                            Text("Down Duvet")
                            Text("Duvet Cover")
                            Text("Pillow")
                            Text("Pillow Case Set")
                            Text("Sheets")
                            Text("Table Cloth")
                            Text("Tablemat")
                        }
                        VStack(alignment: .leading, spacing: 20){
                            Text("Price")
                                .font(.custom("SF Pro Display Semibold", size: 16))
                                .foregroundColor(Color("LinkColor"))
                            Text("$39.99")
                            Text("$49.99")
                            Text("$26.99")
                            Text("$19.99")
                            Text("$11.99")
                            Text("$15.99")
                            Text("$26.99")
                            Text("$4.49")
                        }
                        VStack(alignment: .leading, spacing: 16){
                            Text("Qty")
                                .font(.custom("SF Pro Display Semibold", size: 16))
                                .foregroundColor(Color("LinkColor"))
                            QtyTextField(qty: $qty_duvet)
                            QtyTextField(qty: $qty_downDuvet)
                            QtyTextField(qty: $qty_duvetCover)
                            QtyTextField(qty: $qty_pillow)
                            QtyTextField(qty: $qty_pillowCase)
                            QtyTextField(qty: $qty_sheets)
                            QtyTextField(qty: $qty_tableCloth)
                            QtyTextField(qty: $qty_tablemat)
                        }
                    }

                }
            }
            .font(.custom("SF Pro Display Medium", size: 16))
        }
    }
}

struct PricingHomeTab_Previews: PreviewProvider {
    static var previews: some View {
        PricingHomeTab()
        HomeStandardView()
        HomeLinensView()
    }
}
