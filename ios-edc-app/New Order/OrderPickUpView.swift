//
//  OrderView.swift
//  ios-edc-app
//  Edit Order Pickup info View
//  Created by Shiying Cai on 2022/9/26.
//

import SwiftUI

struct OrderPickUpView: View {
    let time_items = ["9-12 AM", "1-5 PM"]
    let day_items = ["Monday", "Tuesday", "Wednesday", "Thursday", "Friday"]
    
    @State private var time_isExpanded = false
    @State private var day_isExpanded = false
    
    @State private var time_String = ""
    @State private var day_String = ""
    
    @State private var address = ""
    
    @State private var showOrderDeliveryView = false
    @State private var showNewAddressView = false
    @State private var homeBtnIsClicked = false
    @State private var workBtnIsClicked = false
    @State private var otherBtnIsClicked = false

    
    var body: some View {
        ZStack{
            Color("BackgroundColor")
                .ignoresSafeArea()
            ScrollView{
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
                            // Clicking on any of the buttons will jump to the NewAddressView
                            // The clicked state of the button will be passed to OrderPickUpView() via NewAddressView()
                            // If the Home button is clicked here, then the corresponding Home button in NewAddressView() will show the effect that it has been clicked. Same for other buttons
                            HStack{
                                Button(action: {
                                    showNewAddressView = true
                                    homeBtnIsClicked.toggle()
                                    workBtnIsClicked = false
                                    otherBtnIsClicked = false
                                }, label: {
                                    Image("btn-home")
                                })
                                Button(action: {
                                    showNewAddressView = true
                                    workBtnIsClicked.toggle()
                                    homeBtnIsClicked = false
                                    otherBtnIsClicked = false
                                }, label: {
                                    Image("btn-work")
                                })
                                Button(action: {
                                    showNewAddressView = true
                                    otherBtnIsClicked.toggle()
                                    homeBtnIsClicked = false
                                    workBtnIsClicked = false
                                }, label: {
                                    Image("btn-other")
                                })
                                Spacer()
                                    .frame(width:170)
                            }
                            // Jump to NewAddressView()
                            NavigationLink("", destination:  NewAddressView(homeBtnIsClicked: $homeBtnIsClicked, workBtnIsClicked: $workBtnIsClicked, otherBtnIsClicked: $otherBtnIsClicked), isActive: $showNewAddressView)
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
                            .cornerRadius(30)
                            .shadow(color: .gray.opacity(0.7), radius: 5,x: 0,y: 8)
                        
                        HStack{
                            Text("PICKUP DATE")
                                .font(.sansFont)
                                .foregroundColor(Color("NaviTextColor"))
                            Spacer()
                                .frame(width: 225)
                        }
                        HStack{
                            DisclosureGroup("\(day_String)", isExpanded: $day_isExpanded){
                                VStack(spacing: 10){
                                    ForEach(day_items, id: \.self){ item in
                                        Text("\(item)")
                                            .font(.cbLable)
                                            .onTapGesture {
                                                self.day_String = item
                                                withAnimation{
                                                    self.day_isExpanded.toggle()
                                                }
                                            }

                                    }

                                }
                                .frame(height: 130)
                            }
                            .padding()
                            .frame(width: 342)
                            .font(.custom("SF Pro Display Semibold", size: 18))
                            .foregroundColor(Color("TextColor"))
                            .background(Color.white)
                            .cornerRadius(20)
                            .shadow(color: .gray.opacity(0.7), radius: 5,x: 0,y: 8)
                        }
                        
                        HStack{
                            Text("PICKUP TIME")
                                .font(.sansFont)
                                .foregroundColor(Color("NaviTextColor"))
                            Spacer()
                                .frame(width: 225)
                        }
                        HStack{
                            DisclosureGroup("\(time_String)", isExpanded: $time_isExpanded){
                                VStack(spacing: 10){
                                    ForEach(time_items, id: \.self){ item in
                                        Text("\(item)")
                                            .font(.cbLable)
                                            .onTapGesture {
                                                self.time_String = item
                                                withAnimation{
                                                    self.time_isExpanded.toggle()
                                                }
                                            }

                                    }

                                }
                                .frame(height: 50)
                            }
                            .padding()
                            .frame(width: 342)
                            .font(.custom("SF Pro Display Semibold", size: 18))
                            .foregroundColor(Color("TextColor"))
                            .background(Color.white)
                            .cornerRadius(20)
                            .shadow(color: .gray.opacity(0.7), radius: 5,x: 0,y: 8)
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
                        
                        NavigationLink("", destination:  OrderDeliveryView(homeBtnIsClicked: $homeBtnIsClicked, workBtnIsClicked: $workBtnIsClicked, otherBtnIsClicked: $otherBtnIsClicked), isActive: $showOrderDeliveryView)
                            .navigationBarTitleDisplayMode(.inline)
                            .navigationTitle("")
                        
                    }
                    
                }
            }
            .padding(20)
            
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

struct OrderPickUpView_Previews: PreviewProvider {
    static var previews: some View {
        OrderPickUpView()
    }
}
