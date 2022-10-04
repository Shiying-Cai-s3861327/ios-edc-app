//
//  RegisterView.swift
//  ios-edc-app
//
//  Created by 蔡释莹 on 2022/9/22.
//

import SwiftUI

struct RegisterView: View {
    @State var firstName = ""
    @State var lastName = ""
    @State var email = ""
    @State var password = ""
    @State var rePassword = ""
    
    @State private var showSuccessView = false
    
    var body: some View {
        ZStack{
            Color("BackgroundColor")
                .ignoresSafeArea()
            VStack{
                Image("ic-logo")
                    .resizable()
                    .frame(width: 336.25, height: 144)
                    .scaledToFit()
                    .padding()
                
                VStack(alignment: .leading, spacing: 15){
                    HStack{
                        Text("FIRST NAME")
                            .font(.tfLable)
                            .foregroundColor(Color("LabelColor"))
                    }
                    
                    TextField("",text: $firstName)
                        .padding()
                        .frame(width: 342, height: 49)
                        .background(Color.white)
                        .cornerRadius(60)
                        .shadow(color: .gray.opacity(0.7), radius: 8,x: 8,y: 8)
                    
                    HStack{
                        Text("LAST NAME")
                            .font(.tfLable)
                            .foregroundColor(Color("LabelColor"))
                    }
                    
                    TextField("",text: $lastName)
                        .padding()
                        .frame(width: 342, height: 49)
                        .background(Color.white)
                        .cornerRadius(60)
                        .shadow(color: .gray.opacity(0.7), radius: 8,x: 8,y: 8)
                    
                    HStack{
                        Text("EMAIL")
                            .font(.tfLable)
                            .foregroundColor(Color("LabelColor"))
                    }
                    
                    TextField("",text: $email)
                        .padding()
                        .frame(width: 342, height: 49)
                        .background(Color.white)
                        .cornerRadius(60)
                        .shadow(color: .gray.opacity(0.7), radius: 8,x: 8,y: 8)
                    
                    HStack{
                        Text("PASSWORD")
                            .font(.tfLable)
                            .foregroundColor(Color("LabelColor"))
                        Spacer()
                            .frame(width: 240)
                    }
                    SecureField("",text: $password)
                        .padding()
                        .frame(width: 342, height: 49)
                        .background(Color.white)
                        .cornerRadius(60)
                        .shadow(color: .gray.opacity(0.7), radius: 8,x: 8,y: 8)
                    
                    HStack{
                        Text("RE-TYPE PASSWORD")
                            .font(.tfLable)
                            .foregroundColor(Color("LabelColor"))
                    }
                    SecureField("",text: $rePassword)
                        .padding()
                        .frame(width: 342, height: 49)
                        .background(Color.white)
                        .cornerRadius(60)
                        .shadow(color: .gray.opacity(0.7), radius: 8,x: 8,y: 8)
                }
                
                HStack{
                    Image("ic-checkbox")
                    Text("I agree with the terms and conditions")
                        .font(.cbLable)
                        .foregroundColor(Color("LabelColor"))
                    Spacer()
                        .frame(width: 50)
                }
                .padding()

                HStack{
                    Button(action:{showSuccessView = true}){
                        // Some Actions here
                        Text("Continue")
                            .font(.btnLable)
                            .foregroundColor(Color.white)
                            .frame(width: 336, height: 49)
                            .background(Color("LinkColor"))
                            .cornerRadius(60)
                            .shadow(color: .gray.opacity(0.7), radius: 8,x: 8,y: 8)
                            .padding()
                    }
                    NavigationLink("", destination:  SuccessView(), isActive: $showSuccessView)
                }
            }
        }
        .navigationBarBackButtonHidden(true)
        .navigationBarHidden(true)
    }
}

struct SuccessView: View{
    @State private var showLoginView = false
    
    var body: some View {
        VStack{
            HStack{
                Image("ic-tick")
                    .frame(width: 122, height: 122, alignment: .center)
            }
            VStack(alignment: .center){
                Spacer()
                    .frame(height: 100)
                Text("SUCCESS!")
                    .font(.custom("SF Pro Display Bold", size: 25))
                Spacer()
                    .frame(height: 30)
                Text("Your account has been created.")
                    .font(.custom("SF Pro Display Regular", size: 20))
            }

            HStack{
                Button(action:{showLoginView = true}){
                    // Some Actions here
                    Text("Continue")
                        .font(.btnLable)
                        .foregroundColor(Color.white)
                        .frame(width: 336, height: 49)
                        .background(Color("LinkColor"))
                        .cornerRadius(60)
                        .shadow(color: .gray.opacity(0.7), radius: 8,x: 8,y: 8)
                }
                .padding()
                
                NavigationLink("", destination:  SignInView(), isActive: $showLoginView)
                    .navigationBarTitle("")
                    .navigationBarTitleDisplayMode(.inline)
                    .navigationBarHidden(true)
            }
        }
    }
}

struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView()
        SuccessView()
    }
}
