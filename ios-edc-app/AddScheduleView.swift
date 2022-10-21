//
//  AddScheduleView.swift
//  ios-edc-app
//
//  Created by 蔡释莹 on 2022/10/20.
//

import SwiftUI

struct AddScheduleView: View {
    @State private var homeBtnIsClicked = false
    @State private var workBtnIsClicked = false
    @State private var otherBtnIsClicked = false
    @State private var fre_isExpanded = false
    @State private var time_isExpanded = false
    @State private var day_isExpanded = false
    @State private var showDeliveryInfoView = false
    
    @State private var fre_String = ""
    @State private var time_String = ""
    @State private var day_String = ""
    @State private var address: String = ""
    @State private var selectedFre = "Weekly"
    
    let fre_items = ["Weekly", "Bi-Weekly", "Monthly"]
    let time_items = ["9-12 AM", "1-5 PM"]
    let day_items = ["Monday", "Tuesday", "Wednesday", "Thursday", "Friday"]
    
    var body: some View {
        ZStack{
            Color("BackgroundColor")
                .ignoresSafeArea()
            ScrollView{
                VStack{
                    Spacer()
                        .frame(height: 30)
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
                                    self.homeBtnIsClicked.toggle()
                                    self.address = "123 Main Street"
                                    self.fre_String = ""
                                    self.time_String = ""
                                    self.day_String = ""
                                    workBtnIsClicked = false
                                    otherBtnIsClicked = false
                                    
                                }, label: {
                                    Image(homeBtnIsClicked ? "btn-home-bg" : "btn-home-stroke")
                                })
                                Button(action: {
                                    self.workBtnIsClicked.toggle()
                                    self.address = ""
                                    self.fre_String = ""
                                    self.time_String = ""
                                    self.day_String = ""
                                    homeBtnIsClicked = false
                                    otherBtnIsClicked = false
                                }, label: {
                                    Image(workBtnIsClicked ? "btn-work-bg" : "btn-work-stroke")
                                })
                                Button(action: {
                                    self.otherBtnIsClicked.toggle()
                                    self.address = ""
                                    self.fre_String = ""
                                    self.time_String = ""
                                    self.day_String = ""
                                    homeBtnIsClicked = false
                                    workBtnIsClicked = false
                                }, label: {
                                    Image(otherBtnIsClicked ? "btn-other-bg" : "btn-other-stroke")
                                })
                                Spacer()
                                    .frame(width:170)
                            }

                        }

                        VStack{
                            VStack{
                                Text(address)
                                    .font(.custom("SF Pro Display Semibold", size: 18))
                                    .foregroundColor(Color("LabelColor"))
                                    .padding()
                            }
                            .frame(width: 342, height: 49, alignment: .leading)
                            .background(.white)
                            .cornerRadius(20)
                        }
                        Spacer()
                        
                        HStack{
                            Text("pickup frequency")
                                .textCase(.uppercase)
                                .font(.sansFont)
                                .foregroundColor(Color("NaviTextColor"))
                            Spacer()
                                .frame(width: 149)
                        }
                        
                        HStack{
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
                        }

                        HStack{
                            Text("PICKUP TIME")
                                .font(.sansFont)
                                .foregroundColor(Color("NaviTextColor"))
                            Spacer()
                                .frame(width: 220)
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
                        }
                        
                        HStack{
                            Text("PICKUP DAY")
                                .font(.sansFont)
                                .foregroundColor(Color("NaviTextColor"))
                            Spacer()
                                .frame(width: 230)
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
                        }
                    }
                    
                    Spacer()
                        .frame(height: 30)
                    HStack{
                        Button(action:{showDeliveryInfoView = true}){
                            Text("Next")
                                .font(.btnLable)
                                .foregroundColor(Color.white)
                        }

                        .frame(width: 336, height: 49)
                        .background(Color("LinkColor"))
                        .cornerRadius(60)
                        .shadow(color: .gray.opacity(0.7), radius: 8,x: 8,y: 8)
                        .padding()

                        NavigationLink("", destination:  ScheduleDeliveryView(), isActive: $showDeliveryInfoView)
                            .navigationBarTitleDisplayMode(.inline)
                            .navigationTitle("")
                    }
                }
            }
            }
            
        .toolbar{
            ToolbarItem(placement: .navigationBarLeading) {
                Text("My Plans")
                    .font(.naviLable)
                    .foregroundColor(Color("NaviTextColor"))
            }
        }
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct AddScheduleView_Previews: PreviewProvider {
    static var previews: some View {
        AddScheduleView()
    }
}
