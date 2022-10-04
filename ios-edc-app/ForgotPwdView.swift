//
//  ForgotPwdView.swift
//  ios-edc-app
//
//  Created by 蔡释莹 on 2022/9/22.
//

import SwiftUI

struct ForgotPwdView: View {
    @State var email = ""
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
                        Text("Reset Password")
                            .font(.custom("SF Pro Display Bold", size: 20))
                            .foregroundColor(Color("TextColor"))
                        Spacer()
                            .frame(width: 180)
                    }
                    HStack{
                        Text("Enter your email, and we’ll send you an email with a code that you can use to reset your password.")
                            .font(.text)
                            .padding()
                        
                    }
                    
                    VStack{
                        HStack{
                            Text("Email Address")
                                .font(.tfLable)
                                .foregroundColor(Color("LabelColor"))
                            Spacer()
                                .frame(width: 230)
                        }
                        
                        TextField("",text: $email)
                            .padding()
                            .frame(width: 342, height: 49)
                            .background(Color.white)
                            .cornerRadius(60)
                            .shadow(color: .gray.opacity(0.7), radius: 8,x: 8,y: 8)
                        
                        Button(action:{showEmailView = true}){
                            // Some Actions here
                            Text("Send Code")
                                .font(.custom("SF Pro Display Semibold", size: 15))
                                .foregroundColor(Color.white)
                        }
                        
                        .frame(width: 336, height: 49)
                        .background(Color("LinkColor"))
                        .cornerRadius(60)
                        .shadow(color: .gray.opacity(0.7), radius: 8,x: 8,y: 8)
                        .padding()
                        
                        NavigationLink("", destination:  SendEmailView(), isActive: $showEmailView)
                            .navigationBarTitleDisplayMode(.inline)
                            .navigationTitle("")
                        
                        
                    }
                }
                
            }
        }
        .toolbar{
            ToolbarItem(placement: .navigationBarLeading) {
                Text("Reset Password")
                    .font(.naviLable)
                    .foregroundColor(Color("NaviTextColor"))
            }
        }
        .navigationBarTitleDisplayMode(.inline)
    
    }
}

struct ForgotPwdView_Previews: PreviewProvider {
    static var previews: some View {
        ForgotPwdView()
    }
}
