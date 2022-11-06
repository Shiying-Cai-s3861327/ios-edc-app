//
//  EditPlanView.swift
//  ios-edc-app
//
//  Created by Shiying Cai on 2022/11/4.
//

import SwiftUI

struct EditPlanView: View {
    let fre_items = ["Weekly", "Bi-Weekly", "Monthly"]
    let time_items = ["9-12 AM", "1-5 PM"]
    let day_items = ["Monday", "Tuesday", "Wednesday", "Thursday", "Friday"]
    
    @State private var fre_isExpanded = false
    @State private var pickUptime_isExpanded = false
    @State private var pickUpday_isExpanded = false
    @State private var deliverytime_isExpanded = false
    @State private var deliveryday_isExpanded = false
    
    @State private var fre_String = ""
    @State private var pickUptime_String = ""
    @State private var pickUpday_String = ""
    @State private var deliverytime_String = ""
    @State private var deliveryday_String = ""
    
    var body: some View {
        ZStack{
            Color("BackgroundColor")
                .ignoresSafeArea()
            ScrollView{
                VStack(alignment: .leading, spacing: 20){
                    Group{
                        Text("pickup frequency")
                            .textCase(.uppercase)
                            .font(.sansFont)
                            .foregroundColor(Color("NaviTextColor"))
                        DisclosureGroup("\(fre_String)", isExpanded: $fre_isExpanded){
                            VStack(spacing: 10){
                                ForEach(fre_items, id: \.self){ item in
                                    Text("\(item)")
                                        .font(.cbLable)
                                        .onTapGesture {
                                            self.fre_String = item
                                            withAnimation{
                                                self.fre_isExpanded.toggle()
                                            }
                                        }

                                }

                            }
                            .frame(height: 80)
                        }
                        .padding()
                        .frame(width: 342)
                        .font(.custom("SF Pro Display Semibold", size: 18))
                        .foregroundColor(Color("TextColor"))
                        .background(Color.white)
                        .cornerRadius(20)
                        .shadow(color: .gray.opacity(0.7), radius: 8,x: 8,y: 8)
                    }
                    
                    Group{
                        Text("PICKUP TIME")
                            .font(.sansFont)
                            .foregroundColor(Color("NaviTextColor"))
                        DisclosureGroup("\(pickUptime_String)", isExpanded: $pickUptime_isExpanded){
                            VStack(spacing: 10){
                                ForEach(time_items, id: \.self){ item in
                                    Text("\(item)")
                                        .font(.cbLable)
                                        .onTapGesture {
                                            self.pickUptime_String = item
                                            withAnimation{
                                                self.pickUptime_isExpanded.toggle()
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
                        .shadow(color: .gray.opacity(0.7), radius: 8,x: 8,y: 8)
                    }
                    
                    Group{
                        Text("PICKUP DAY")
                            .font(.sansFont)
                            .foregroundColor(Color("NaviTextColor"))
                        DisclosureGroup("\(pickUpday_String)", isExpanded: $pickUpday_isExpanded){
                            VStack(spacing: 10){
                                ForEach(day_items, id: \.self){ item in
                                    Text("\(item)")
                                        .font(.cbLable)
                                        .onTapGesture {
                                            self.pickUpday_String = item
                                            withAnimation{
                                                self.pickUpday_isExpanded.toggle()
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
                        .shadow(color: .gray.opacity(0.7), radius: 8,x: 8,y: 8)
                    }
                    
                    Group{
                        Text("DELIVERY TIME")
                            .font(.sansFont)
                            .foregroundColor(Color("NaviTextColor"))
                        DisclosureGroup("\(deliverytime_String)", isExpanded: $deliverytime_isExpanded){
                            VStack(spacing: 10){
                                ForEach(time_items, id: \.self){ item in
                                    Text("\(item)")
                                        .font(.cbLable)
                                        .onTapGesture {
                                            self.deliverytime_String = item
                                            withAnimation{
                                                self.deliverytime_isExpanded.toggle()
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
                        .shadow(color: .gray.opacity(0.7), radius: 8,x: 8,y: 8)
                    }
                    
                    Group{
                        Text("DELIVERY DAY")
                            .font(.sansFont)
                            .foregroundColor(Color("NaviTextColor"))
                        DisclosureGroup("\(deliveryday_String)", isExpanded: $deliveryday_isExpanded){
                            VStack(spacing: 10){
                                ForEach(day_items, id: \.self){ item in
                                    Text("\(item)")
                                        .font(.cbLable)
                                        .onTapGesture {
                                            self.deliveryday_String = item
                                            withAnimation{
                                                self.deliveryday_isExpanded.toggle()
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
                        .shadow(color: .gray.opacity(0.7), radius: 8,x: 8,y: 8)
                    }
                    
                    Button(action:{
                    
                    }){
                        Text("Confirm")
                            .font(.btnLable)
                            .foregroundColor(Color.white)
                    }
                    .frame(width: 336, height: 49)
                    .background(Color("LinkColor"))
                    .cornerRadius(60)
                    .shadow(color: .gray.opacity(0.7), radius: 8,x: 8,y: 8)
                }
                .padding(20)
            }
            
        }
        .toolbar{
            ToolbarItem(placement: .navigationBarLeading) {
                Text("Plans - Edit Plan")
                    .font(.naviLable)
                    .foregroundColor(Color("NaviTextColor"))
            }
        }
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct EditPlanView_Previews: PreviewProvider {
    static var previews: some View {
        EditPlanView()
    }
}
