//
//  CreatePwdView.swift
//  ios-edc-app
//
//  Created by Shiying Cai on 2022/9/24.
//

import SwiftUI

struct CreatePwdView: View {
    @State var password = ""
    @State var confirmPwd = ""

    @State private var showEmailView = false
    @State private var showLoginView = false

    var body: some View {
        ZStack(alignment: .top){
            Color("BackgroundColor")
                .ignoresSafeArea()
            
            VStack(alignment: .leading){
                HStack{
                    Text("Create New Password")
                        .font(.custom("SF Pro Display Bold", size: 20))
                        .foregroundColor(Color("TextColor"))
                }
                .padding()
                HStack{
                    Text("Your new password must be different from previously used passwords.")
                        .font(.text)
                        .padding()
                }
                
                VStack{
                    VStack(alignment: .leading, spacing: -3){
                        HStack{
                            Text("PASSWORD")
                                .font(.tfLable)
                                .foregroundColor(Color("LabelColor"))
                        }
                        .padding()
                        SecureField("",text: $password)
                            .padding()
                            .frame(width: 342, height: 49)
                            .background(Color.white)
                            .cornerRadius(60)
                            .shadow(color: .gray.opacity(0.7), radius: 8,x: 8,y: 8)
                    }
                    
                    VStack(alignment: .leading, spacing: -3){
                        HStack{
                            Text("CONFIRM PASSWORD")
                                .font(.tfLable)
                                .foregroundColor(Color("LabelColor"))
                        }
                        .padding()
                        SecureField("",text: $confirmPwd)
                            .padding()
                            .frame(width: 342, height: 49)
                            .background(Color.white)
                            .cornerRadius(60)
                            .shadow(color: .gray.opacity(0.7), radius: 8,x: 8,y: 8)
                    }
                    
                    HStack{
                        Button(action:{showLoginView = true}){
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
                        
                        NavigationLink("", destination:  SignInView(), isActive: $showLoginView)
                    }
                }
            }
            .padding(80)
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
