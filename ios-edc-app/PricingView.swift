//
//  PricingView.swift
//  ios-edc-app
//
//  Created by 蔡释莹 on 2022/10/20.
//

import SwiftUI

struct PricingView: View {
    @State private var showEstimateDry = false
    @State private var showEstimateLaundry = false
    @State private var showEstimateTailoring = false
    @State private var showEstimateHomeCare = false
    @State private var showEstimateShoe = false
    @State private var showEstimateSports = false
    
    var body: some View {
        ZStack{
            Color("BackgroundColor")
                .ignoresSafeArea()
            VStack{
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
                
                VStack(spacing: 10){
                    HStack(spacing: 20){
                        VStack{
                            Button(action: {
                                showEstimateDry = true
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
                            
                            NavigationLink("", destination:  EstimateDryCleanView(), isActive: $showEstimateDry)
                                .navigationBarTitleDisplayMode(.inline)
                                .navigationTitle("")
                        }
                        
                        VStack{
                            Button(action: {
                                showEstimateLaundry = true
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
                            
                            NavigationLink("", destination:  EstimateLaundryView(), isActive: $showEstimateLaundry)
                                .navigationBarTitleDisplayMode(.inline)
                                .navigationTitle("")
                        }
                    }
                    
                    HStack(spacing: 20){
                        VStack{
                            Button(action: {
                                showEstimateTailoring = true
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
                            
                            NavigationLink("", destination:  EstimateTailoringView(), isActive: $showEstimateTailoring)
                                .navigationBarTitleDisplayMode(.inline)
                                .navigationTitle("")
                        }
                        
                        VStack{
                            Button(action: {
                                showEstimateHomeCare = true
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
                            
                            NavigationLink("", destination:  EstimateHomeCareView(), isActive: $showEstimateHomeCare)
                                .navigationBarTitleDisplayMode(.inline)
                                .navigationTitle("")
                        }
                    }
                    
                    HStack(spacing: 20){
                        VStack{
                            Button(action: {
                                showEstimateShoe = true
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
                            
                            NavigationLink("", destination:  EstimateShoeRepairView(), isActive: $showEstimateShoe)
                                .navigationBarTitleDisplayMode(.inline)
                                .navigationTitle("")
                        }
                        
                        VStack{
                            Button(action: {
                                showEstimateSports = true
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
                            
                            NavigationLink("", destination:  EstimateSportEquipView(), isActive: $showEstimateSports)
                                .navigationBarTitleDisplayMode(.inline)
                                .navigationTitle("")
                        }
                    }
                }
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
