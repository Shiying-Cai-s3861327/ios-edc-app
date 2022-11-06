//
//  AccountView.swift
//  ios-edc-app
//
//  Created by Shiying Cai on 2022/9/24.
//

import SwiftUI

struct AccountView: View {
    @State var userName: String = "roni"
    
    @State private var showOrderPickUpView = false
    @State private var showPromotionView = false
    @State private var showLoginView = false
    @State private var contactAlert: Bool = false
    @State private var saved = false
    
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
                        Group{
                            NavigationLink(destination: PricingView()){
                                Text("price")
                                    .font(.acctLable)
                                    .foregroundColor(Color("LabelColor"))
                            }
                            
                            
                            NavigationLink(destination: SettingView()){
                                Text("setting")
                                    .font(.acctLable)
                                    .foregroundColor(Color("LabelColor"))
                            }
                            
                            // Determine if the user has saved the payment method
                            // Now the default is saved == false
                            NavigationLink(destination: PaymentDetailsView(saved: $saved)){
                                Text("payment")
                                    .font(.acctLable)
                                    .foregroundColor(Color("LabelColor"))
                            }
                            
                            NavigationLink(destination: ShoppingCartView()){
                                Text("my orders")
                                    .font(.acctLable)
                                    .foregroundColor(Color("LabelColor"))
                            }
                            
                            NavigationLink(destination: MembershipView()){
                                Text("memberships")
                                    .font(.acctLable)
                                    .foregroundColor(Color("LabelColor"))
                            }
                            
                            NavigationLink(destination: RewardsView()){
                                Text("rewards")
                                    .font(.acctLable)
                                    .foregroundColor(Color("LabelColor"))
                            }
                            
                            NavigationLink(destination: NotificationView()){
                                Text("notifications")
                                    .font(.acctLable)
                                    .foregroundColor(Color("LabelColor"))
                            }
                        }
                        .listRowBackground(Color("BackgroundColor"))
                    }
                    .textCase(.uppercase)
                    .listStyle(.inset)
                    .background(Color("BackgroundColor"))
                }
                
                HStack{
                    VStack{
                        Button(action: {
                            withAnimation{
                                self.contactAlert.toggle()
                            }
                        }, label: {
                            Text("Need help? Contact Us")
                                .underline()
                                .font(.custom("SF Pro Medium", size: 14))
                                .foregroundColor(Color("LinkColor"))
                        })
                        
                        
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
            // Determine if a ContactUs popup will appear
            if self.contactAlert{
                GeometryReader{ _ in
                    ContactPopupView(isShowed: $contactAlert)
                        .frame(maxWidth: .infinity, maxHeight: .infinity)
                        .padding(.horizontal, 35)
                }.background(
                    Color.black.opacity(0.65)
                        .edgesIgnoringSafeArea(.all)
                        .onTapGesture {
                            withAnimation {
                                self.contactAlert.toggle()
                            }
                        }
                )
                
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
