//
//  CancelOrderPopup.swift
//  ios-edc-app
//  Cancel Order Popup View
//  Created by Shiying Cai on 2022/11/4.
//

import SwiftUI

struct CancelOrderPopup: View {
    
    @Binding var isShowed: Bool
    @Binding var isCanceled: Bool
    
    var body: some View {
        VStack(spacing: 40){
            HStack{
                Text("Are you sure you’d like to cancel this order?")
                    .font(.custom("SF Pro Display Bold", size: 20))
                    .multilineTextAlignment(.center)
                    .frame(width: 280)
            }
            HStack{
                Group{
                    Button(action: {
                        withAnimation{
                            isCanceled = true
                            isShowed.toggle()
                        }
                    }, label: {
                        Text("YES")
                            .font(.custom("SF Pro Display Semibold", size: 16))
                            .foregroundColor(.white)
                    })
                    
                    Button(action: {
                        withAnimation{
                            isShowed.toggle()
                        }
                    }, label: {
                        Text("NO")
                            .font(.custom("SF Pro Display Semibold", size: 16))
                            .foregroundColor(.white)
                    })
                }
                .frame(width: 70, height: 30)
                .background(Color.accentColor)
                .cornerRadius(30)
                .shadow(color: .gray.opacity(0.7), radius: 3,x: 0,y: 3)
            }
        }
        .frame(width: 325, height: 180)
        .background(Color("BackgroundColor"))
        .cornerRadius(20)
        .shadow(color: .gray.opacity(0.8), radius: 3,x: 0,y: 3)
    }
}

struct CancelOrderPopup_Previews: PreviewProvider {
    struct CancelOrderPopupHolder: View {
    @State var isShowed = false
    @State var isCanceled = false

    var body: some View {
        CancelOrderPopup(isShowed: $isShowed, isCanceled: $isCanceled)
        }
    }
    static var previews: some View {
        CancelOrderPopupHolder()
    }
}
