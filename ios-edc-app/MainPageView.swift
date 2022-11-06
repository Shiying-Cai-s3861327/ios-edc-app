//
//  MainPageView.swift
//  ios-edc-app
//
//  Created by Shiying Cai on 2022/9/24.
//

import SwiftUI

struct MainPageView: View {
    @State private var showOrderPickUpView = false
    @State private var showMembershipView = false

    @State private var userName: String = "Roni"
    
    var body: some View {
        ZStack{
            Image("img-cloth")
                .position(x: 200,y:500)
            VStack(alignment: .center, spacing: 180){
                VStack(spacing: 60){
                    Image("ic-logo")
                        .resizable()
                        .frame(width: 336.25, height: 144)
                        .scaledToFit()
                        .padding()
                    
                    VStack(alignment: .center){
                        Text("Hi " + userName)
                            .font(.custom("SF Pro Display Bold", size: 26))
                            
                        Text("What can we do for you \n today")
                            .font(.custom("SF Pro Display Medium", size: 20))
                            .multilineTextAlignment(.center)
                            .frame(maxWidth: .infinity, alignment: .center)
                    }
                }
                VStack{
                    HStack{
                        Button(action:{showOrderPickUpView = true}){
                            // Some Actions here
                            Text("Order Now")
                                .font(.btnLable)
                                .foregroundColor(Color.white)
                                .frame(width: 336, height: 49)
                                .background(Color("LinkColor"))
                                .cornerRadius(60)
                                .shadow(color: .gray.opacity(0.7), radius: 8,x: 8,y: 8)
                        }
                        .padding()
                        
                        NavigationLink("", destination:  OrderPickUpView(), isActive: $showOrderPickUpView)

                    }
                    
                    HStack{
                        Button(action:{showMembershipView = true}){
                            // Some Actions here
                            Text("My Membership")
                                .font(.btnLable)
                                .foregroundColor(Color("TextColor"))
                                .frame(width: 336, height: 49)
                                .background(.white)
                                .cornerRadius(60)
                                .shadow(color: .gray.opacity(0.7), radius: 8,x: 8,y: 8)
                        }
                        .padding()
                        
                        NavigationLink("", destination:  MembershipView(), isActive: $showMembershipView)

                    }
                }
            }
            
        }
        .navigationBarTitle("")
        .navigationBarBackButtonHidden(true)
        .navigationBarHidden(true)
        .navigationBarTitleDisplayMode(.inline)
        
    }
}

struct MainPageView_Previews: PreviewProvider {
    static var previews: some View {
        MainPageView()
    }
}
