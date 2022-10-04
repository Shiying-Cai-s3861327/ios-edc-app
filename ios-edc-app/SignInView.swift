//
//  SignInView.swift
//  ios-edc-app
//
//  Created by 蔡释莹 on 2022/9/21.
//

import SwiftUI

struct SignInView: View {
    @State var email = ""
    @State var password = ""
    
    @State private var showRegisterView = false
    @State private var showTabView = false
    
    var body: some View {
        NavigationView{
            ZStack{
                Color("BackgroundColor")
                    .ignoresSafeArea()
                VStack{
                    ZStack{
                        Image("ic-logo")
                            .resizable()
                            .frame(width: 336.25, height: 144)
                            .scaledToFit()
                            .padding()
                            
                    }
                    VStack{
                        HStack{
                            Text("EMAIL")
                                .font(.tfLable)
                                .foregroundColor(Color("LabelColor"))
                            Spacer()
                                .frame(width: 270)
                        }
                        
                        TextField("",text: $email)
                            .padding()
                            .frame(width: 342, height: 49)
                            .background(Color.white)
                            .cornerRadius(60)
                            .shadow(color: .gray.opacity(0.7), radius: 8,x: 8,y: 8)
                    }
                    
                    VStack{
                        HStack{
                            Text("PASSWORD")
                                .font(.tfLable)
                                .foregroundColor(Color("LabelColor"))
                            Spacer()
                                .frame(width: 230)
                        }
                        SecureField("",text: $password)
                            .padding()
                            .frame(width: 342, height: 49)
                            .background(Color.white)
                            .cornerRadius(60)
                            .shadow(color: .gray.opacity(0.7), radius: 8,x: 8,y: 8)
                    }
                    .frame(height:100)
                
                    HStack{
                        Button(action:{showTabView = true}){
                            // Some Actions here
                            Text("Login")
                                .font(.btnLable)
                                .foregroundColor(Color.white)
                                .frame(width: 336, height: 49)
                                .background(Color("LinkColor"))
                                .cornerRadius(60)
                                .shadow(color: .gray.opacity(0.7), radius: 8,x: 8,y: 8)
                        }
                        .padding()
                        
                        NavigationLink("", destination:  NaviTabView(), isActive: $showTabView)
                            .navigationBarTitle("")
                            .navigationBarTitleDisplayMode(.inline)
                            .navigationBarHidden(true)
                    }
                    
                    HStack{
                        Image("ic-checkbox")
                        Text("Remember me")
                            .font(.cbLable)
                            .foregroundColor(Color("LabelColor"))
                        Spacer()
                            .frame(width: 50)
                        
                        NavigationLink(destination: ForgotPwdView()){
                            Text("Forgot Password?")
                                .font(.linkLable)
                                .underline()
                                .foregroundColor(Color("TextColor"))
                        }
                    }
                    .padding()
                    
                    VStack{
                        HStack{
                            Text("Don't have an account?")
                                .font(.noticeLable)
                                .foregroundColor(Color("TextColor"))
                            
                            NavigationLink(destination: RegisterView()){
                                Text("Register here")
                                    .font(.noticeLable)
                                    .foregroundColor(Color("LinkColor"))
                                    .underline()
                            }
                            .navigationBarTitle("")
                            .navigationBarTitleDisplayMode(.inline)
                            .navigationBarHidden(true)
                        }
                        Spacer()
                            .frame(height: 50)
                        Text("Login with:")
                            .font(.noticeLable)
                            .foregroundColor(Color("TextColor"))
                    }
                    .padding()
                    
                    HStack{
                        Image("ic-facebook")
                        Spacer()
                            .frame(width: 35)
                        Image("ic-apple")
                        Spacer()
                            .frame(width: 35)
                        Image("ic-google")
                    }
                }
                
            }
        }
        .navigationBarTitle("")
        .navigationBarTitleDisplayMode(.inline)
        .navigationBarHidden(true)

    }
        
}


struct SignInView_Previews: PreviewProvider {
    static var previews: some View {
        Group {

            SignInView()
                .previewInterfaceOrientation(.portrait)
        }
    }
}

