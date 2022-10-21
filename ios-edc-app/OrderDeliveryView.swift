//
//  OrderDeliveryView.swift
//  ios-edc-app
//
//  Created by 蔡释莹 on 2022/10/9.
//

import SwiftUI

struct OrderDeliveryView: View {
    @State private var address = ""
    @State private var deliveryDate = Date()
    @State private var deliveryTime = Date()

    @State private var showOrderItemView = false
    @Binding var homeBtnIsClicked: Bool
    @Binding var workBtnIsClicked: Bool
    @Binding var otherBtnIsClicked: Bool
    
    
    var body: some View {
        ZStack{
            Color("BackgroundColor")
                .ignoresSafeArea()
            VStack{
                VStack(alignment: .center, spacing: 15){
                    VStack{
                        HStack{
                            Text("DELIVERY ADDRESS")
                                .font(.sansFont)
                                .foregroundColor(Color("NaviTextColor"))
                            Spacer()
                                .frame(width:170)
                        }
                        HStack{
                            Button(action: {
                                homeBtnIsClicked.toggle()
                            }, label: {
                                Image(homeBtnIsClicked ? "btn-home-bg" : "btn-home-stroke")
                            })
                            Button(action: {
                                workBtnIsClicked.toggle()
                            }, label: {
                                Image(workBtnIsClicked ? "btn-work-bg" : "btn-work-stroke")
                            })
                            Button(action: {
                                otherBtnIsClicked.toggle()
                            }, label: {
                                Image(otherBtnIsClicked ? "btn-other-bg" : "btn-other-stroke")
                            })
                            Spacer()
                                .frame(width:170)
                        }
                        Spacer()
                            .frame(height: 50)
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
                        Text("DELIVERY DATE")
                            .font(.sansFont)
                            .foregroundColor(Color("NaviTextColor"))
                        Spacer()
                            .frame(width: 210)
                    }
                    HStack{
                        DatePicker("", selection: $deliveryDate, in: Date()..., displayedComponents: .date)
                        .frame(width:75)
                        Spacer()
                            .frame(width: 240)
                    }

                    HStack{
                        Text("DELIVERY TIME")
                            .font(.sansFont)
                            .foregroundColor(Color("NaviTextColor"))
                        Spacer()
                            .frame(width: 210)
                    }
                    HStack{
                        DatePicker("", selection: $deliveryTime, in: Date()..., displayedComponents: .hourAndMinute)
                            .frame(width:75)
                        Spacer()
                            .frame(width: 265)
                    }

                    Spacer()
                        .frame(height: 60)
                    Button(action:{showOrderItemView = true}){
                        Text("Next")
                            .font(.btnLable)
                            .foregroundColor(Color.white)
                    }

                    .frame(width: 336, height: 49)
                    .background(Color("LinkColor"))
                    .cornerRadius(60)
                    .shadow(color: .gray.opacity(0.7), radius: 8,x: 8,y: 8)
                    .padding()

                    NavigationLink("", destination:  OrderItemView(), isActive: $showOrderItemView)
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

struct OrderDeliveryView_Previews: PreviewProvider {
    static var previews: some View {
        OrderDeliveryView(homeBtnIsClicked: .constant(true),
                          workBtnIsClicked: .constant(false),
                          otherBtnIsClicked: .constant(false))
    }
}
