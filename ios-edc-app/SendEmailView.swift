//
//  SendEmailView.swift
//  ios-edc-app
//
//  Created by 蔡释莹 on 2022/9/23.
//

import SwiftUI

struct SendEmailView: View {
    @State var code = ""
    @State private var showCreatePwdView = false
    
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
                    Image("ic-email")
                    HStack{
                        Text("Thanks! You’ve been sent an email with a password recovery code.")
                            .font(.text)
                            .padding()
                        
                    }
                }
                
                VStack{
                    TextField("",text: $code)
                        .padding()
                        .frame(width: 250, height: 49)
                        .background(Color.white)
                        .cornerRadius(60)
                        .shadow(color: .gray.opacity(0.7), radius: 8,x: 8,y: 8)
                    
                    Button(action:{showCreatePwdView = true}){
                        // Some Actions here
                        Text("Confirm")
                            .font(.custom("SF Pro Display Semibold", size: 15))
                            .foregroundColor(Color.white)
                    }
                    
                    .frame(width: 150, height: 49)
                    .background(Color("LinkColor"))
                    .cornerRadius(60)
                    .shadow(color: .gray.opacity(0.7), radius: 8,x: 8,y: 8)
                    .padding()
                    
                    NavigationLink("", destination:  CreatePwdView(), isActive: $showCreatePwdView)
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

struct SendEmailView_Previews: PreviewProvider {
    static var previews: some View {
        SendEmailView()
    }
}
