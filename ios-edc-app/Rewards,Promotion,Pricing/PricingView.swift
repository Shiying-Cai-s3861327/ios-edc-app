//
//  PricingView.swift
//  ios-edc-app
//  Parent View for PricingDryCleaningTab, PricingLaundryTab,
//  PricingTailoringTab, PricingHomeTab
//  PricingShoeTab, PricingSportTab
//  Created by Shiying Cai on 2022/10/20.
//

import SwiftUI

struct PricingView: View {
    
    @State var orderItem = ""
    @State var isclicked = false
    
    var body: some View {
        ZStack{
            Color("BackgroundColor")
                .ignoresSafeArea()
            VStack{
                // Title and text display section
                VStack{
                    HStack{
                        Text("Estimate the Price of your Order")
                            .font(.custom("SF Pro Display Bold", size: 22))
                            .foregroundColor(Color("LabelColor"))
                    }
                    Spacer()
                        .frame(height: 15)
                    HStack{
                        Group{
                            Text("Select the service you are looking for below to estimate the price of your order. Kindly note, the ")
                                .font(.custom("SF Pro Text", size: 16)) +
                            Text("**final cost of your order is determined after service**. ")
                        }
                        .frame(width: 325)
                    }
                }
                Spacer()
                    .frame(height: 50)
                
                // All six buttons section
                VStack(spacing: 10){
                    HStack(spacing: 20){
                        // Dry Cleaning Button
                        VStack{
                            Button(action: {
                                isclicked = true
                                orderItem = "Dry Cleaning"
                            }, label: {
                                VStack{
                                    Text("Dry Cleaning")
                                        .font(.custom("SF Pro Semibold", size: 17.84))
                                        .foregroundColor(Color("PricingColor"))
                                    Image("img-dry-cleaning")
                                }
                            })
                            .frame(width: 147, height: 119)
                            .background(Color.white)
                            .cornerRadius(33)
                            .shadow(color: .gray.opacity(0.7), radius: 8,x: 8,y: 8)
                            
                        }
                        // Laundry Button
                        VStack{
                            Button(action: {
                                isclicked = true
                                orderItem = "Laundry"
                            }, label: {
                                VStack{
                                    Text("Laundry")
                                        .font(.custom("SF Pro Semibold", size: 17.84))
                                        .foregroundColor(Color("PricingColor"))
                                    Image("img-laundry")
                                }
                            })
                            .frame(width: 147, height: 119)
                            .background(Color.white)
                            .cornerRadius(33)
                            .shadow(color: .gray.opacity(0.7), radius: 8,x: 8,y: 8)

                        }
                    }
                    
                    HStack(spacing: 20){
                        // Tailoring Button
                        VStack{
                            Button(action: {
                                isclicked = true
                                orderItem = "Tailoring"
                            }, label: {
                                VStack{
                                    Text("Tailoring")
                                        .font(.custom("SF Pro Semibold", size: 17.84))
                                        .foregroundColor(Color("PricingColor"))
                                    Image("img-tailoring")
                                }
                            })
                            .frame(width: 147, height: 119)
                            .background(Color.white)
                            .cornerRadius(33)
                            .shadow(color: .gray.opacity(0.7), radius: 8,x: 8,y: 8)
                         
                        }
                        // Home Care Button
                        VStack{
                            Button(action: {
                                isclicked = true
                                orderItem = "Home Care"
                            }, label: {
                                VStack{
                                    Text("Home Care")
                                        .font(.custom("SF Pro Semibold", size: 17.84))
                                        .foregroundColor(Color("PricingColor"))
                                    Image("img-home-care")
                                }
                            })
                            .frame(width: 147, height: 119)
                            .background(Color.white)
                            .cornerRadius(33)
                            .shadow(color: .gray.opacity(0.7), radius: 8,x: 8,y: 8)
                           
                        }
                    }
                    
                    HStack(spacing: 20){
                        // Shoe Repair Button
                        VStack{
                            Button(action: {
                                isclicked = true
                                orderItem = "Shoe Repair"
                            }, label: {
                                VStack{
                                    Text("Shoe Repair")
                                        .font(.custom("SF Pro Semibold", size: 17.84))
                                        .foregroundColor(Color("PricingColor"))
                                    Image("img-shoe-repair")
                                }
                            })
                            .frame(width: 147, height: 119)
                            .background(Color.white)
                            .cornerRadius(33)
                            .shadow(color: .gray.opacity(0.7), radius: 8,x: 8,y: 8)
                            
                        }
                        // Sports Equip. Button
                        VStack{
                            Button(action: {
                                isclicked = true
                                orderItem = "Sports Equipment"
                            }, label: {
                                VStack{
                                    Text("Sports Equip.")
                                        .font(.custom("SF Pro Semibold", size: 17.84))
                                        .foregroundColor(Color("PricingColor"))
                                    Image("img-sports-equip")
                                }
                            })
                            .frame(width: 147, height: 119)
                            .background(Color.white)
                            .cornerRadius(33)
                            .shadow(color: .gray.opacity(0.7), radius: 8,x: 8,y: 8)
                        }
                    }
                }
                // Jumping to the corresponding page according to the clicked button
                NavigationLink("", destination:  EstimatePriceView(orderItem: $orderItem), isActive: $isclicked)
                    .navigationBarTitleDisplayMode(.inline)
                    .navigationTitle("")
                
                Spacer()
                    .frame(height: 40)
            }
        }
        .toolbar{
            ToolbarItem(placement: .navigationBarLeading) {
                Text("Pricing")
                    .font(.naviLable)
                    .foregroundColor(Color("NaviTextColor"))
            }
        }
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct PricingView_Previews: PreviewProvider {
    static var previews: some View {
        PricingView()
    }
}
