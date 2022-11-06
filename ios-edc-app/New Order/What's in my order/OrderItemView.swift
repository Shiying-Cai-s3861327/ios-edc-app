//
//  OrderItemView.swift
//  ios-edc-app
//
//  Created by Shiying Cai on 2022/10/20.
//

import SwiftUI

struct OrderItemView: View {
    @State private var checked1 = false
    @State private var checked2 = false
    @State private var checked3 = false
    @State private var checked4 = false
    @State private var checked5 = false
    @State private var checked6 = false
    @State private var checked7 = false
    @State private var checked8 = false
    @State private var checked9 = false
    
    @State private var showCalculateView = false
    @State private var showOrderSummaryView = false
    
    var body: some View {
        ZStack{
            Color("BackgroundColor")
                .ignoresSafeArea()
            VStack{
                HStack{
                    VStack{
                        Text("What's in my order?")
                            .font(.custom("SF Pro Bold", size: 20))
                            .foregroundColor(Color("TextColor"))
                        Text("Check all relevant boxes.")
                            .font(.custom("SF Pro Regular", size: 16))
                    }
                    Spacer()
                        .frame(width: 130)
                }
                Spacer()
                    .frame(height: 30)
                VStack(spacing: 30){
                    HStack{
                        Text("Dry Cleaning")
                            .font(.itemText)
                            .foregroundColor(Color("LabelColor"))
                        Spacer()
                            .frame(width: 170)
                        LargeCheckBoxView(checked: $checked1)
                    }
                    .frame(width: 343, height: 50)
                    .background(
                        RoundedRectangle(cornerRadius: 10)
                            .fill(Color.white)
                            .shadow(color: .gray.opacity(0.7), radius: 8,x: 8,y: 8)
                    )
                    
                    VStack(spacing: 30){
                        HStack(spacing: 23){
                            HStack{
                                Text("Laundry")
                                    .font(.itemText)
                                    .foregroundColor(Color("LabelColor"))
                                Spacer()
                                    .frame(width: 50)
                                LargeCheckBoxView(checked: $checked2)
                            }
                            .frame(width: 160, height: 50)
                            .background(
                                RoundedRectangle(cornerRadius: 10)
                                    .fill(Color.white)
                                    .shadow(color: .gray.opacity(0.7), radius: 8,x: 8,y: 8)
                            )
                            HStack{
                                Text("Wash & Fold")
                                    .font(.itemText)
                                    .foregroundColor(Color("LabelColor"))
                                Spacer()
                                    .frame(width: 30)
                                LargeCheckBoxView(checked: $checked6)
                            }
                            .frame(width: 160, height: 50)
                            .background(
                                RoundedRectangle(cornerRadius: 10)
                                    .fill(Color.white)
                                    .shadow(color: .gray.opacity(0.7), radius: 8,x: 8,y: 8)
                            )
                        }
                        
                        HStack(spacing: 23){
                            HStack{
                                Text("Tailoring")
                                    .font(.itemText)
                                    .foregroundColor(Color("LabelColor"))
                                Spacer()
                                    .frame(width: 50)
                                LargeCheckBoxView(checked: $checked3)
                            }
                            .frame(width: 160, height: 50)
                            .background(
                                RoundedRectangle(cornerRadius: 10)
                                    .fill(Color.white)
                                    .shadow(color: .gray.opacity(0.7), radius: 8,x: 8,y: 8)
                            )
                            HStack{
                                Text("Shoe Repair")
                                    .font(.itemText)
                                    .foregroundColor(Color("LabelColor"))
                                Spacer()
                                    .frame(width: 30)
                                LargeCheckBoxView(checked: $checked7)
                            }
                            .frame(width: 160, height: 50)
                            .background(
                                RoundedRectangle(cornerRadius: 10)
                                    .fill(Color.white)
                                    .shadow(color: .gray.opacity(0.7), radius: 8,x: 8,y: 8)
                            )
                        }
                        
                        HStack(spacing: 23){
                            HStack{
                                Text("Home Care")
                                    .font(.itemText)
                                    .foregroundColor(Color("LabelColor"))
                                Spacer()
                                    .frame(width: 35)
                                LargeCheckBoxView(checked: $checked4)
                            }
                            .frame(width: 160, height: 50)
                            .background(
                                RoundedRectangle(cornerRadius: 10)
                                    .fill(Color.white)
                                    .shadow(color: .gray.opacity(0.7), radius: 8,x: 8,y: 8)
                            )
                            HStack{
                                Text("Jackets")
                                    .font(.itemText)
                                    .foregroundColor(Color("LabelColor"))
                                Spacer()
                                    .frame(width: 60)
                                LargeCheckBoxView(checked: $checked8)
                            }
                            .frame(width: 160, height: 50)
                            .background(
                                RoundedRectangle(cornerRadius: 10)
                                    .fill(Color.white)
                                    .shadow(color: .gray.opacity(0.7), radius: 8,x: 8,y: 8)
                            )
                        }
                        
                        HStack(spacing: 23){
                            HStack{
                                Text("Wedding")
                                    .font(.itemText)
                                    .foregroundColor(Color("LabelColor"))
                                Spacer()
                                    .frame(width: 50)
                                LargeCheckBoxView(checked: $checked5)
                            }
                            .frame(width: 160, height: 50)
                            .background(
                                RoundedRectangle(cornerRadius: 10)
                                    .fill(Color.white)
                                    .shadow(color: .gray.opacity(0.7), radius: 8,x: 8,y: 8)
                            )
                            HStack{
                                Text("Sports Equip.")
                                    .font(.itemText)
                                    .foregroundColor(Color("LabelColor"))
                                Spacer()
                                    .frame(width: 25)
                                LargeCheckBoxView(checked: $checked9)
                            }
                            .frame(width: 160, height: 50)
                            .background(
                                RoundedRectangle(cornerRadius: 10)
                                    .fill(Color.white)
                                    .shadow(color: .gray.opacity(0.7), radius: 8,x: 8,y: 8)
                            )
                        }
                        
                    }
                }
                Spacer()
                    .frame(height: 40)
                VStack(spacing: -10){
                    Button(action:{showCalculateView = true}){
                        Text("Next")
                            .font(.btnLable)
                            .foregroundColor(Color.white)
                    }

                    .frame(width: 336, height: 49)
                    .background(Color("LinkColor"))
                    .cornerRadius(60)
                    .shadow(color: .gray.opacity(0.7), radius: 8,x: 8,y: 8)
                    .padding()

                    NavigationLink("", destination:  OrderCalculateView(checked1: $checked1, checked2: $checked2, checked3: $checked3, checked4: $checked4, checked7: $checked7, checked9: $checked9), isActive: $showCalculateView)
                        .navigationBarTitleDisplayMode(.inline)
                        .navigationTitle("")
                    
                    
                }
                
            }
            
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

struct OrderItemView_Previews: PreviewProvider {
    static var previews: some View {
        OrderItemView()
    }
}
