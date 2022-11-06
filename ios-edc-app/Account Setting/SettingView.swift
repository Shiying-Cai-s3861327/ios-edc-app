//
//  SettingView.swift
//  ios-edc-app
//  Account Setting View
//  Created by Shiying Cai on 2022/10/20.
//

import SwiftUI

struct SettingView: View {
    
    @State var firstName = ""
    @State var lastName = ""
    @State var email = ""
    @State var phone = ""
    
    @State private var showSettingNewAddressView = false
    
    var body: some View {
        ZStack{
            Color("BackgroundColor")
                .ignoresSafeArea()
            GeometryReader{ g in
                ScrollView{
                    VStack(alignment: .leading, spacing: 40){
                        VStack(alignment: .leading, spacing: 20){
                            Text("Profile")
                                .font(.custom("SF Pro Display Bold", size: 20))
                                .foregroundColor(Color("LabelColor"))
                            VStack(alignment: .leading, spacing: 15){
                                Group{
                                    Text("First Name")
                                        .textCase(.uppercase)
                                        .font(.custom("SF Pro Display Bold", size: 14))
                                        .foregroundColor(Color("LabelColor"))
                                    TextField("",text: $firstName)
                                        .padding()
                                        .frame(width: 342, height: 49)
                                        .background(Color.white)
                                        .cornerRadius(30)
                                        .shadow(color: .gray.opacity(0.7), radius: 3,x: 0,y: 5)
                                }
                                Group{
                                    Text("Last Name")
                                        .textCase(.uppercase)
                                        .font(.custom("SF Pro Display Bold", size: 14))
                                        .foregroundColor(Color("LabelColor"))
                                    TextField("",text: $lastName)
                                        .padding()
                                        .frame(width: 342, height: 49)
                                        .background(Color.white)
                                        .cornerRadius(30)
                                        .shadow(color: .gray.opacity(0.7), radius: 3,x: 0,y: 5)
                                }
                                
                                Group{
                                    Text("Email")
                                        .textCase(.uppercase)
                                        .font(.custom("SF Pro Display Bold", size: 14))
                                        .foregroundColor(Color("LabelColor"))
                                    TextField("",text: $email)
                                        .padding()
                                        .frame(width: 342, height: 49)
                                        .background(Color.white)
                                        .cornerRadius(30)
                                        .shadow(color: .gray.opacity(0.7), radius: 3,x: 0,y: 5)
                                }
                                
                                Group{
                                    Text("phone number")
                                        .textCase(.uppercase)
                                        .font(.custom("SF Pro Display Bold", size: 14))
                                        .foregroundColor(Color("LabelColor"))
                                    TextField("",text: $phone)
                                        .padding()
                                        .frame(width: 342, height: 49)
                                        .background(Color.white)
                                        .cornerRadius(30)
                                        .shadow(color: .gray.opacity(0.7), radius: 3,x: 0,y: 5)
                                }
                            
                                Button(action: {
                                    
                                }, label: {
                                    Text("Save")
                                        .font(.custom("SF Pro Display Semibold", size: 12))
                                        .foregroundColor(Color.white)
                                })
                                .frame(width: 102, height: 23)
                                .background(Color.accentColor)
                                .cornerRadius(30)
                                .shadow(color: .gray.opacity(0.7), radius: 3,x: 0,y: 3)
                                
                            }
                        }
                        
                        VStack(alignment: .leading){
                            Text("Saved Addresses")
                                .font(.custom("SF Pro Display Bold", size: 20))
                                .foregroundColor(Color("LabelColor"))
                            SavedAddressTab()
                                .frame(height: g.size.height, alignment: .center)
                                .padding(-10)
                            Button(action: {
                                showSettingNewAddressView = true
                            }, label: {
                                Text("+ Add New Address")
                                    .font(.custom("SF Pro Semibold", size: 9.22))
                                    .foregroundColor(Color.white)
                            })
                            .frame(width: 164, height: 23)
                            .background(Color("LinkColor"))
                            .cornerRadius(30)
                            .shadow(color: .gray.opacity(0.7), radius: 3,x: 0,y: 3)
                            
                            NavigationLink("", destination:  SettingNewAddressView(), isActive: $showSettingNewAddressView)
                                .navigationBarTitleDisplayMode(.inline)
                                .navigationTitle("")
                        }
                        
                    }
                    .padding(20)
                }
            }
            
        }
        .toolbar{
            ToolbarItem(placement: .navigationBarLeading) {
                Text("Setting")
                    .font(.naviLable)
                    .foregroundColor(Color("NaviTextColor"))
            }
        }
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct SettingView_Previews: PreviewProvider {
    static var previews: some View {
        SettingView()
    }
}
