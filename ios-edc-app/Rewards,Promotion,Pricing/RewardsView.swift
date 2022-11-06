//
//  RewardsView.swift
//  ios-edc-app
//
//  Created by Shiying Cai on 2022/10/20.
//

import SwiftUI

struct RewardsView: View {
    var body: some View {
        ZStack{
            Color("BackgroundColor")
                .ignoresSafeArea()
            VStack{
                HStack{
                    Image("ic-star")
                    Spacer()
                }
                Spacer()
                    .frame(height: 60)
                HStack{
                    Text("Check back soon for new \n rewards!")
                        .font(.custom("SF Pro Bold", size: 20))
                        .foregroundColor(Color("NaviTextColor"))
                        .opacity(0.7)
                        .multilineTextAlignment(.center)
                }
                Spacer()
                    .frame(height: 20)
                HStack{
                    Image("ic-soap-bubble")
                }
                Spacer()
                    .frame(height: 10)
                HStack{
                    Spacer()
                    Image("ic-star")
                }
                Spacer()
                    .frame(height: 200)
            }
            .padding()
            .frame(width: 330)
        }
        .toolbar{
            ToolbarItem(placement: .navigationBarLeading) {
                Text("Rewards")
                    .font(.naviLable)
                    .foregroundColor(Color("NaviTextColor"))
            }
        }
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct RewardsView_Previews: PreviewProvider {
    static var previews: some View {
        RewardsView()
    }
}
