//
//  NotificationView.swift
//  ios-edc-app
//  Notification View
//  Created by Shiying Cai on 2022/10/20.
//

import SwiftUI

struct NotificationView: View {
    @State private var emailToggle1 = true
    @State private var textToggle1 = false
    @State private var emailToggle2 = true
    @State private var textToggle2 = false
    
    var body: some View {
        ZStack{
            Color("BackgroundColor")
                .ignoresSafeArea()
            VStack(spacing: 30){
                VStack(spacing: 20){
                    HStack{
                        Text("Pickup & Delivery")
                            .font(.popLable)
                        Spacer()
                            .frame(width: 178)
                    }
                    
                    VStack{
                        List{
                            Group{
                                Toggle("Email", isOn: $emailToggle1)
                                if emailToggle1{
                                    // some actions
                                }
                                Toggle("Text", isOn: $textToggle1)
                                if textToggle1{
                                    // some actions
                                }
                            }
                            .font(.custom("SF Pro Regular", size: 20))
                            .tint(Color("LinkColor"))
                            .listRowBackground(Color("BackgroundColor"))
                        }
                        .frame(height: 120)
                        .listStyle(.inset)
                        .background(Color("BackgroundColor"))
                    }
                }
                
                VStack(spacing: 20){
                    HStack{
                        Text("Promotional Messages")
                            .font(.popLable)
                        Spacer()
                            .frame(width: 130)
                    }
                    
                    VStack{
                        List{
                            Group{
                                Toggle("Email", isOn: $emailToggle2)
                                if emailToggle2{
                                    // some actions
                                }
                                Toggle("Text", isOn: $textToggle2)
                                if textToggle2{
                                    // some actions
                                }
                            }
                            .font(.custom("SF Pro Regular", size: 20))
                            .tint(Color("LinkColor"))
                            .listRowBackground(Color("BackgroundColor"))
                        }
                        .frame(height: 120)
                        .listStyle(.inset)
                        .background(Color("BackgroundColor"))
                    }
                }
                Spacer()
                    .frame(height: 170)
            }
        }
        .toolbar{
            ToolbarItem(placement: .navigationBarLeading) {
                Text("Notification Preferences")
                    .font(.naviLable)
                    .foregroundColor(Color("NaviTextColor"))
            }
        }
        .navigationBarTitleDisplayMode(.inline)
    }
    
    init(){
        UITableView.appearance().backgroundColor = UIColor(Color.clear)
    }
}

struct NotificationView_Previews: PreviewProvider {
    static var previews: some View {
        NotificationView()
    }
}
