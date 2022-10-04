//
//  CreatePwdView.swift
//  ios-edc-app
//
//  Created by 蔡释莹 on 2022/9/24.
//

import SwiftUI

struct CreatePwdView: View {
    @State var password = ""
    @State var confirmPwd = ""

    @State private var showEmailView = false

    var body: some View {
        ZStack{
            Color("BackgroundColor")
                .ignoresSafeArea()
            
            ScrollView{
                VStack{
                    Spacer()
                        .frame(height:80)
                    HStack{
                        Text("Create New Password")
                            .font(.custom("SF Pro Display Bold", size: 20))
                            .foregroundColor(Color("TextColor"))
                        Spacer()
                            .frame(width: 130)
                    }
                    HStack{
                        Text("Your new password must be different from previously used passwords.")
                            .font(.text)
                            .padding()
                        Spacer()
                            .frame(width: 15)
                        
                    }
                    
                    VStack{
                        VStack{
                            HStack{
                                Text("PASSWORD")
                                    .font(.tfLable)
                                    .foregroundColor(Color("LabelColor"))
                                Spacer()
                                    .frame(width: 250)
                            }
                            
                            SecureField("",text: $password)
                                .padding()
                                .frame(width: 342, height: 49)
                                .background(Color.white)
                                .cornerRadius(60)
                                .shadow(color: .gray.opacity(0.7), radius: 8,x: 8,y: 8)
                        }
                        
                        VStack{
                            HStack{
                                Text("CONFIRM PASSWORD")
                                    .font(.tfLable)
                                    .foregroundColor(Color("LabelColor"))
                                Spacer()
                                    .frame(width: 180)
                            }
                            
                            SecureField("",text: $confirmPwd)
                                .padding()
                                .frame(width: 342, height: 49)
                                .background(Color.white)
                                .cornerRadius(60)
                                .shadow(color: .gray.opacity(0.7), radius: 8,x: 8,y: 8)
                        }
                        .frame(height: 100)
                        
                        HStack{
                            Button(action:{showEmailView = true}){
                                // Some Actions here
                                Text("Reset Password")
                                    .font(.custom("SF Pro Display Semibold", size: 15))
                                    .foregroundColor(Color.white)
                            }
                            .frame(width: 150, height: 49)
                            .background(Color("LinkColor"))
                            .cornerRadius(60)
                            .shadow(color: .gray.opacity(0.7), radius: 8,x: 8,y: 8)
                            .padding()
                            
                            Spacer()
                                .frame(width: 190)
                            
                            NavigationLink("", destination:  SendEmailView(), isActive: $showEmailView)
                        }
                    }
                }
                
            }
        }
        .toolbar{
            ToolbarItem(placement: .navigationBarLeading) {
                Text("Create New Password")
                    .font(.naviLable)
                    .foregroundColor(Color("NaviTextColor"))
            }
        }
        .navigationBarTitleDisplayMode(.inline)
        .navigationTitle("")
        .navigationBarBackButtonHidden(true)
    }

}

struct CreatePwdView_Previews: PreviewProvider {
    static var previews: some View {
        CreatePwdView()
    }
}
