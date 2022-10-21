//
//  PickUpInfoView.swift
//  ios-edc-app
//
//  Created by 蔡释莹 on 2022/10/9.
//

import SwiftUI

struct PickUpInfoView: View {
    @State private var address = ""
    @State private var pickUpDate = Date()
    @State private var pickUpTime = Date()

    @State private var showOrderDeliveryView = false
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
                            Text("PICKUP ADDRESS")
                                .font(.sansFont)
                                .foregroundColor(Color("NaviTextColor"))
                            Spacer()
                                .frame(width:180)
                        }
                        HStack{
                            Image(homeBtnIsClicked ? "btn-home-bg" : "btn-home-stroke")
                            Image(workBtnIsClicked ? "btn-work-bg" : "btn-work-stroke")
                            Image(otherBtnIsClicked ? "btn-other-bg" : "btn-other-stroke")
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

                    NavigationLink("", destination:  OrderDeliveryView(homeBtnIsClicked: $homeBtnIsClicked, workBtnIsClicked: $workBtnIsClicked, otherBtnIsClicked: $otherBtnIsClicked), isActive: $showOrderDeliveryView)
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


struct PickUpInfoView_Previews: PreviewProvider {
    static var previews: some View {
        PickUpInfoView(
            homeBtnIsClicked: .constant(true),
            workBtnIsClicked: .constant(false),
            otherBtnIsClicked: .constant(false))
    }
}
