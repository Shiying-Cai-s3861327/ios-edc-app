//
//  OrderCalculateView.swift
//  ios-edc-app
//
//  Created by Shiying Cai on 2022/10/20.
//

import SwiftUI
import Combine

struct OrderCalculateView: View {
    @Binding var checked1: Bool
    @Binding var checked2: Bool
    @Binding var checked3: Bool
    @Binding var checked4: Bool
    @Binding var checked7: Bool
    @Binding var checked9: Bool

    @State var total = ""
    
    var body: some View {
        ZStack{
            Color("BackgroundColor")
                .ignoresSafeArea()
            ScrollView{
                VStack(alignment: .leading){
                    Spacer()
                        .frame(height: 70)
                    HStack{
                        VStack{
                            Text("What's in my order?")
                                .font(.custom("SF Pro Bold", size: 20))
                                .foregroundColor(Color("TextColor"))
                            Text("Check all relevant boxes.")
                                .font(.custom("SF Pro Regular", size: 16))
                        }
                        .padding(20)

                    }
                    
                    VStack(spacing: -10){
                        // Display according to the options on the previous page
                        if self.checked1{
                            DryCleaningTab()
                        }
                        
                        if self.checked2{
                            LaundryTab()
                        }
                        
                        if self.checked3{
                            TailoringTab()
                        }
                        
                        if self.checked4{
                            HomeCareTab()
                        }
                        
                        if self.checked7{
                            ShoeRepairTab()
                        }
                        
                        if self.checked9{
                            SportsEquipTab()
                        }
                        
                    }
                    
                    VStack(spacing: -8){
                        Button(action:{
                            
                        }){
                            Text("Next")
                                .font(.btnLable)
                                .foregroundColor(Color.white)
                        }

                        .frame(width: 342, height: 49)
                        .background(Color("LinkColor"))
                        .cornerRadius(60)
                        .shadow(color: .gray.opacity(0.7), radius: 8,x: 8,y: 8)
                        .padding()
                    }
                }
            }
            .padding(-20)
            
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

struct OrderCalculateView_Previews: PreviewProvider {
    struct OrderCalculateViewHolder: View {
        @State private var checked1 = false
        @State private var checked2 = true
        @State private var checked3 = false
        @State private var checked4 = false
        @State private var checked7 = false
        @State private var checked9 = false

    var body: some View {
        OrderCalculateView(checked1: $checked1, checked2: $checked2, checked3: $checked3, checked4: $checked4, checked7: $checked7, checked9: $checked9)
        }
    }
    static var previews: some View {
        OrderCalculateViewHolder()
    }
}
