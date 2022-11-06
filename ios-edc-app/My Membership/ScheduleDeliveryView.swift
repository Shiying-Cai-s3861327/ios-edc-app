//
//  ScheduleDeliveryView.swift
//  ios-edc-app
//
//  Created by Shiying Cai on 2022/10/22.
//

import SwiftUI

struct ScheduleDeliveryView: View {
    let time_items = ["9-12 AM", "1-5 PM"]
    let day_items = ["Monday", "Tuesday", "Wednesday", "Thursday", "Friday"]
    
    @State private var time_isExpanded = false
    @State private var day_isExpanded = false
    @State private var showPlansConfirmView = false
    
    @State private var time_String = ""
    @State private var day_String = ""
    
    var body: some View {
        ZStack{
            Color("BackgroundColor")
                .ignoresSafeArea()
            
            VStack(alignment: .center, spacing: 15){
                Spacer()
                HStack{
                    Text("delivery day")
                        .textCase(.uppercase)
                        .font(.sansFont)
                        .foregroundColor(Color("NaviTextColor"))
                    Spacer()
                        .frame(width: 200)
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
                    .shadow(color: .gray.opacity(0.7), radius: 8,x: 8,y: 8)
                }
                
                HStack{
                    Text("delivery time")
                        .textCase(.uppercase)
                        .font(.sansFont)
                        .foregroundColor(Color("NaviTextColor"))
                    Spacer()
                        .frame(width: 190)
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
                    .shadow(color: .gray.opacity(0.7), radius: 8,x: 8,y: 8)
                }
                Spacer()

                HStack{
                    Button(action:{showPlansConfirmView = true}){
                        Text("Create Plan")
                            .font(.btnLable)
                            .foregroundColor(Color.white)
                    }

                    .frame(width: 336, height: 49)
                    .background(Color("LinkColor"))
                    .cornerRadius(60)
                    .shadow(color: .gray.opacity(0.7), radius: 8,x: 8,y: 8)
                    .padding()

                    NavigationLink("", destination:  PlanConfirmView(), isActive: $showPlansConfirmView)
                        .isDetailLink(false)
                        .navigationBarTitleDisplayMode(.inline)
                        .navigationTitle("")
                        
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

struct PlanConfirmView: View{
    @State private var showLoginView = false
    
    var body: some View {
        ZStack{
            Color("BackgroundColor")
                .ignoresSafeArea()
            VStack(spacing: 20){
                HStack{
                    Text("Plan Created!")
                        .font(.custom("SF Pro Display Bold", size: 24))
                        .foregroundColor(Color("NaviTextColor"))
                }
                
                HStack{
                    Text("A plan confirmation has been sent to your email address.")
                        .font(.custom("SF Pro Display Regular", size: 20))
                        .foregroundColor(Color("NaviTextColor"))
                        .multilineTextAlignment(.center)
                        .frame(width: 350)
                }
                Spacer()
                    .frame(height: 20)
                HStack{
                    Image("img-asset3-1")
                    Spacer()
                }
                Spacer()
                    .frame(height: 80)
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

struct ScheduleDeliveryView_Previews: PreviewProvider {
    static var previews: some View {
        ScheduleDeliveryView()
        PlanConfirmView()
    }
}
