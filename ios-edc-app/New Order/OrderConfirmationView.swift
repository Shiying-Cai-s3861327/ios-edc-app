//
//  OrderConfirmationView.swift
//  ios-edc-app
//
//  Created by Shiying Cai on 2022/10/23.
//

import SwiftUI

struct OrderConfirmationView: View {
    @State var orderNumber = "0012"
    var body: some View {
        ZStack{
            Color("BackgroundColor")
                .ignoresSafeArea()
            VStack(spacing: 20){
                HStack{
                    Image("img-asset3-1")
                    Spacer()
                }
                
                Text("#"+orderNumber)
                    .font(.custom("SF Pro Bold", size: 48))
                Text("Order Submitted!")
                    .font(.custom("SF Pro Bold", size: 24))
                
                Text("A confirmation of your order has been sent to you email address.")
                    .multilineTextAlignment(.center)
                    .frame(width: 250)
                
                Button(action:{}){
                    Text("Track Order")
                        .font(.btnLable)
                        .foregroundColor(Color.white)
                }

                .frame(width: 342, height: 49)
                .background(Color("LinkColor"))
                .cornerRadius(60)
                .shadow(color: .gray.opacity(0.7), radius: 8,x: 8,y: 8)
                .padding()
                
                
                    
            }
        }
        .toolbar{
            ToolbarItem(placement: .navigationBarLeading) {
                Text("New Orders")
                    .font(.naviLable)
                    .foregroundColor(Color("NaviTextColor"))
            }
        }
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct OrderConfirmationView_Previews: PreviewProvider {
    static var previews: some View {
        OrderConfirmationView()
    }
}
