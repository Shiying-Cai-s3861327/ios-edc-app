//
//  AccountView.swift
//  ios-edc-app
//
//  Created by 蔡释莹 on 2022/9/24.
//

import SwiftUI

struct AccountView: View {
    @State var userName: String = "roni"
    
    @State var showOrderPickUpView = false
    @State var showPromotionView = false
    @State var showLoginView = false
    
    let items = ["price", "setting", "payment", "my orders", "membership",
    "rewards", "notifications"]
    
    var body: some View {
        ZStack{
            Color("BackgroundColor")
                .ignoresSafeArea()
            VStack{
                HStack{
                    Text("welcome\n" + userName)
                        .textCase(.uppercase)
                        .font(.custom("SF Pro Black", size: 32))
                    Spacer()
                        .frame(width: 180)
                }
                
                HStack{
                    VStack{
                        Button(action: {
                            showOrderPickUpView = true
                        }, label: {
                            Image("ic-order")
                        })
                        
                        Text("order now")
                            .textCase(.uppercase)
                            .font(.custom("SF Pro Semibold", size: 14))
                            .foregroundColor(Color("LinkColor"))
                        
                        NavigationLink("", destination: OrderPickUpView(), isActive: $showOrderPickUpView)
                            .navigationBarTitleDisplayMode(.inline)
                            .navigationTitle("")
                    }
                    Spacer()
                        .frame(width: 30)
                    VStack{
                        Button(action: {
                            showPromotionView = true
                        }, label: {
                            Image("ic-promotion-2")
                        })
                        
                        Text("promotions")
                            .textCase(.uppercase)
                            .font(.custom("SF Pro Semibold", size: 14))
                            .foregroundColor(Color("LinkColor"))
                        
                        NavigationLink("", destination: PromotionView(), isActive: $showPromotionView)
                            .navigationBarTitleDisplayMode(.inline)
                            .navigationTitle("Promotion")
                    }
                    Spacer()
                        .frame(width: 130)
                }
                
                VStack{
                    List{
                        NavigationLink(destination: PricingView()){
                            Text("price")
                                .font(.acctLable)
                                .foregroundColor(Color("LabelColor"))
                        }
                        .listRowBackground(Color("BackgroundColor"))
                        
                        NavigationLink(destination: SettingView()){
                            Text("setting")
                                .font(.acctLable)
                                .foregroundColor(Color("LabelColor"))
                        }
                        .listRowBackground(Color("BackgroundColor"))
                        
                        NavigationLink(destination: PaymentView()){
                            Text("payment")
                                .font(.acctLable)
                                .foregroundColor(Color("LabelColor"))
                        }
                        .listRowBackground(Color("BackgroundColor"))
                        
                        NavigationLink(destination: ShoppingCartView()){
                            Text("my orders")
                                .font(.acctLable)
                                .foregroundColor(Color("LabelColor"))
                        }
                        .listRowBackground(Color("BackgroundColor"))
                        
                        NavigationLink(destination: MembershipView()){
                            Text("memberships")
                                .font(.acctLable)
                                .foregroundColor(Color("LabelColor"))
                        }
                        .listRowBackground(Color("BackgroundColor"))
                        
                        NavigationLink(destination: RewardsView()){
                            Text("rewards")
                                .font(.acctLable)
                                .foregroundColor(Color("LabelColor"))
                        }
                        .listRowBackground(Color("BackgroundColor"))
                        .navigationBarTitle("Rewards")
                        .navigationBarTitleDisplayMode(.inline)
                        
                        NavigationLink(destination: NotificationView()){
                            Text("notifications")
                                .font(.acctLable)
                                .foregroundColor(Color("LabelColor"))
                        }
                        .listRowBackground(Color("BackgroundColor"))
                    }
                    
                    .textCase(.uppercase)
                    .listStyle(.inset)
                    .background(Color("BackgroundColor"))
                }
                
                HStack{
                    VStack{
                        NavigationLink(destination: ContactPopupView()){
                            Text("Need help? Contact Us")
                                .underline()
                                .font(.custom("SF Pro Medium", size: 14))
                                .foregroundColor(Color("LinkColor"))
                        }
                        
                        Button(action:{showLoginView = true}){
                            Text("Logout")
                                .font(.custom("SF Pro Display Semibold", size: 15))
                                .foregroundColor(Color.white)
                        }
                        .frame(width: 166, height: 50)
                        .background(Color("LinkColor"))
                        .cornerRadius(60)
                        .shadow(color: .gray.opacity(0.7), radius: 5,x: 5,y: 5)
                        
                        NavigationLink("", destination:  SignInView(), isActive: $showLoginView)
                    }
                    Spacer()
                        .frame(width: 180)
                }
                Spacer()
                    .frame(height: 60)
                
            }
        }
        .toolbar{
            ToolbarItem(placement: .navigationBarLeading) {
                Text("Account")
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

struct AccountView_Previews: PreviewProvider {
    static var previews: some View {
        AccountView()
    }
}
