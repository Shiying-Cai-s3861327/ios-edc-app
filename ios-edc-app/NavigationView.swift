//
//  NavigationView.swift
//  ios-edc-app
//
//  Created by 蔡释莹 on 2022/9/25.
//

import SwiftUI

struct NavigationView: View {
    var body: some View {
        TabView{
            MainPageView()
                .tabItem{
                    Image("ic-home")
                }
            
            ShoppingCartView()
                .tabItem{
                    Image("ic-shoppingcart")
                }
            
            PromotionView()
                .tabItem{
                    Image("ic-promotion")
                }
            
            AccountView()
                .tabItem{
                    Image("ic-account")
                }
        }
    }
}

struct NavigationView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView()
    }
}
