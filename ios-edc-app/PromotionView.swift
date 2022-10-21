//
//  PromotionView.swift
//  ios-edc-app
//
//  Created by 蔡释莹 on 2022/9/24.
//

import SwiftUI

struct PromotionView: View {
    @State private var doClaim = false
    
    var body: some View {
        ZStack{
            Color(.white)
                .ignoresSafeArea()
            VStack{
                VStack{
                    ZStack{
                        Color("BackgroundColor")
                        Text("Refer a Friend")
                            .font(.popLable)
                            .foregroundColor(Color("LabelColor"))
                            
                    }
                    .frame(height: 33)
                    .cornerRadius(20, corners: [.topLeft, .topRight])
                    
                    
                    HStack{
                        Text("Share this unique code with a friend and get $10.00 off your next delivery when they place their first order! ")
                            .font(.custom("SF Pro Text Medium", size: 18))
                            .multilineTextAlignment(.center)
                    }
                    
                    HStack{
                        Spacer()
                            .frame(width: 230)
                        Button(action:{doClaim = true}){
                            Text("Claim")
                                .font(.custom("SF Pro Display Semibold", size: 12))
                                .foregroundColor(Color.white)
                        }
                        .frame(width: 67, height: 30)
                        .background(Color.accentColor)
                        .cornerRadius(60)
                        .shadow(color: .gray.opacity(0.7), radius: 3,x: 3,y: 3)
                        
                    }
                    Spacer()
                }
                .frame(width: 342, height: 153)
                .background(.white)
                .cornerRadius(20)
                .shadow(color: .gray.opacity(0.9), radius: 8,x: 8,y: 8)
                
                Spacer()
                    .frame(height: 50)
                HStack{
                    Image("img-coupon")
                }
                Spacer()
                    .frame(height: 130)
            }
            
        }
        .toolbar{
            ToolbarItem(placement: .navigationBarLeading) {
                Text("Promotion")
                    .font(.naviLable)
                    .foregroundColor(Color("NaviTextColor"))
            }
        }
        .navigationBarTitleDisplayMode(.inline)

        
    }
}

extension View {
    func cornerRadius(_ radius: CGFloat, corners: UIRectCorner) -> some View {
        clipShape( RoundedCorner(radius: radius, corners: corners) )
    }
}

struct RoundedCorner: Shape {

    var radius: CGFloat = .infinity
    var corners: UIRectCorner = .allCorners

    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
        return Path(path.cgPath)
    }
}


struct PromotionView_Previews: PreviewProvider {
    static var previews: some View {
        PromotionView()
    }
}


