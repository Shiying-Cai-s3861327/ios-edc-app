//
//  NaviTabView.swift
//  ios-edc-app
//  Implementing navigation bar
//  Created by Shiying Cai on 2022/9/25.
//

import SwiftUI

struct NaviTabView: View {
    var body: some View {
        TabView{
            
            MainPageView()
                .tabItem{
                    Image("ic-home")
                        .renderingMode(.template)
                        .padding()
                }
            
            ShoppingCartView()
                .tabItem{
                    Image("ic-shoppingcart")
                        .renderingMode(.template)
                        .padding()
                }
            
            
            PromotionView()
                .tabItem{
                    Image("ic-promotion")
                        .renderingMode(.template)
                        .padding()
                }

            
            AccountView()
                .tabItem{
                    Image("ic-account")
                        .renderingMode(.template)
                        .padding()
                }
        }
    }
    
    init(){
        // Set tab bar appearance
        UITabBar.appearance().isTranslucent = false
        UITabBar.appearance().backgroundColor = UIColor(Color("TabColor"))
        UITabBar.appearance().unselectedItemTintColor = UIColor(Color("LinkColor"))
    }
}

struct NaviTabView_Previews: PreviewProvider {
    static var previews: some View {
        NaviTabView()
    }
}
