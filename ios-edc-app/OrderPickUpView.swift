//
//  OrderView.swift
//  ios-edc-app
//
//  Created by 蔡释莹 on 2022/9/26.
//

import SwiftUI

class btnIsClicked: ObservableObject{
    @Published var clickHome = false;
    @Published var clickWork = false
    @Published var clickOther = false
}

struct OrderPickUpView: View {
    @State private var address = ""
    @State private var pickUpDate = Date()
    @State private var pickUpTime = Date()
    
    @State private var showOrderDeliveryView = false
    @State private var showNewAddressView = false
    @StateObject var isClicked = btnIsClicked()

    
    var body: some View {
        ZStack{
            Color("BackgroundColor")
                .ignoresSafeArea()
            VStack{
                VStack(alignment: .center, spacing: 15){
                    VStack{
                        HStack{
                            Text("PICKUP ADDRESS")
                                .font(.sansFont)
                                .foregroundColor(Color("NaviTextColor"))
                            Spacer()
                                .frame(width:180)
                        }
                        HStack{
                            Button(action: {
                                showNewAddressView = true
                                isClicked.clickHome = true
                            }, label: {
                                Image("btn-home")
                            })
                            Button(action: {
                                showNewAddressView = true
                                isClicked.clickWork = true
                            }, label: {
                                Image("btn-work")
                            })
                            Button(action: {
                                showNewAddressView = true
                                isClicked.clickOther = true
                            }, label: {
                                Image("btn-other")
                            })
                            Spacer()
                                .frame(width:170)
                        }
                        Spacer()
                            .frame(height: 50)
                        NavigationLink("", destination:  NewAddressView(btnIsClicked: $showNewAddressView), isActive: $showNewAddressView)
                            .navigationBarTitleDisplayMode(.inline)
                            .navigationTitle("")
                    }
                    
                    HStack{
                        Text("ADDRESS")
                            .font(.sansFont)
                            .foregroundColor(Color("NaviTextColor"))
                        Spacer()
                            .frame(width: 260)
                    }

                    TextField("",text: $address)
                        .padding()
                        .frame(width: 350, height: 49)
                        .background(Color.white)
                        .cornerRadius(60)
                        .shadow(color: .gray.opacity(0.7), radius: 8,x: 8,y: 8)
                    
                    HStack{
                        Text("PICKUP DATE")
                            .font(.sansFont)
                            .foregroundColor(Color("NaviTextColor"))
                        Spacer()
                            .frame(width: 225)
                    }
                    HStack{
                        DatePicker("", selection: $pickUpDate, in: Date()..., displayedComponents: .date)
                        .frame(width:75)
                        Spacer()
                            .frame(width: 240)
                    }
                    
                    HStack{
                        Text("PICKUP TIME")
                            .font(.sansFont)
                            .foregroundColor(Color("NaviTextColor"))
                        Spacer()
                            .frame(width: 225)
                    }
                    HStack{
                        DatePicker("", selection: $pickUpTime, in: Date()..., displayedComponents: .hourAndMinute)
                            .frame(width:75)
                        Spacer()
                            .frame(width: 265)
                    }
                    
                    Spacer()
                        .frame(height: 60)
                    Button(action:{showOrderDeliveryView = true}){
                        Text("Next")
                            .font(.btnLable)
                            .foregroundColor(Color.white)
                    }
                    
                    .frame(width: 336, height: 49)
                    .background(Color("LinkColor"))
                    .cornerRadius(60)
                    .shadow(color: .gray.opacity(0.7), radius: 8,x: 8,y: 8)
                    .padding()
                    
                    NavigationLink("", destination:  OrderDeliveryView(), isActive: $showOrderDeliveryView)
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
        .environmentObject(isClicked)
    }
    
}

struct OrderPickUpView_Previews: PreviewProvider {
    static var previews: some View {
        OrderPickUpView()
    }
}
