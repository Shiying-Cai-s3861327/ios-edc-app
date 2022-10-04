//
//  OrderView.swift
//  ios-edc-app
//
//  Created by 蔡释莹 on 2022/9/26.
//

import SwiftUI

struct NewOrderView: View {
    var body: some View {
        ZStack{
            Color("BackgroundColor")
                .ignoresSafeArea()
            VStack{
                HStack{
                    Text("PICKUP ADDRESS")
                        .font(.sansFont)
                        .foregroundColor(Color("NaviTextColor"))
                }
                HStack{
                    Button(action: {
                        
                    }, label: {
                        Image("btn-home")
                    })
                    .buttonStyle(.plain)
                }
            }
        }
        .toolbar{
            ToolbarItem(placement: .navigationBarLeading) {
                Text("New Order")
                    .font(.naviLable)
                    .foregroundColor(Color("NaviTextColor"))
            }
        }
        .navigationBarTitleDisplayMode(.inline)
    }
    
}

struct NewOrderView_Previews: PreviewProvider {
    static var previews: some View {
        NewOrderView()
    }
}
