//
//  MembershipView.swift
//  ios-edc-app
//
//  Created by Shiying Cai on 2022/10/3.
//

import SwiftUI

struct MembershipView: View {
    @State private var showMyShceduleView = false
    @State private var showAddScheduleView = false
    
    @State private var btnCurrentIsClick = false
    @State private var btnPastIsClick = false
    @State private var btnPlanIsClick = true
    
    var body: some View {
        ZStack{
            Color("BackgroundColor")
                .ignoresSafeArea()
            VStack{
                VStack(spacing: -5){
                    Button(action:{showMyShceduleView = true}){
                        Text("My Schedule")
                            .font(.btnLable)
                            .foregroundColor(Color.white)
                    }
                    
                    .frame(width: 336, height: 49)
                    .background(Color("LinkColor"))
                    .cornerRadius(60)
                    .shadow(color: .gray.opacity(0.7), radius: 8,x: 8,y: 8)
                    .padding()
                    
                    NavigationLink("", destination:  MyScheduleView(btnCurrentIsClick: $btnCurrentIsClick, btnPastIsClick: $btnPastIsClick, btnPlanIsClick: $btnPlanIsClick), isActive: $showMyShceduleView)
                        .navigationBarTitleDisplayMode(.inline)
                        .navigationTitle("")
                    
                    Button(action:{showAddScheduleView = true}){
                        Text("Add a Schedule")
                            .font(.btnLable)
                            .foregroundColor(Color.white)
                    }
                    
                    .frame(width: 336, height: 49)
                    .background(Color("LinkColor"))
                    .cornerRadius(60)
                    .shadow(color: .gray.opacity(0.7), radius: 8,x: 8,y: 8)
                    .padding()
                    
                    NavigationLink("", destination:  AddScheduleView(), isActive: $showAddScheduleView)
                        .navigationBarTitleDisplayMode(.inline)
                        .navigationTitle("")
                    
                }
                Spacer()
                    .frame(height: 40)
                VStack{
                    Image("img-membership-cloth")
                }
                .frame(width: 390, height: 435)
            }

        }
        .toolbar{
            ToolbarItem(placement: .navigationBarLeading) {
                Text("My Membership")
                    .font(.naviLable)
                    .foregroundColor(Color("NaviTextColor"))
            }
        }
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct MembershipView_Previews: PreviewProvider {
    static var previews: some View {
        MembershipView()
    }
}
