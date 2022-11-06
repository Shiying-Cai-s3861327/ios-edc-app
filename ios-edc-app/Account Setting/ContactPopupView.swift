//
//  ContactPopupView.swift
//  ios-edc-app
//  Contact Us Popup View
//  Created by Shiying Cai on 2022/10/21.
//

import SwiftUI

struct ContactPopupView: View {
    @Binding var isShowed: Bool
    
    var phoneNumber = "(647)785-2221"
    var mail = "info@exclusivedrycleaners.ca"
    
    var body: some View {
        VStack{
            ZStack{
                Color("BackgroundColor")
                HStack(spacing: 90){
                    Spacer()
                        .frame(width: 20)
                    Text("Support")
                        .font(.popLable)
                        .foregroundColor(Color("LabelColor"))
                    
                    // Close button
                    Button(action: {
                        withAnimation{
                            isShowed.toggle()
                        }
                    }, label: {
                        Image("ic-close")
                    })

                }
            }
            .frame(height: 43)
            .cornerRadius(20, corners: [.topLeft, .topRight])

            VStack(spacing: 15){
                HStack{
                    Text("Let us know how we can assist you, we’re happy to help.")
                        .font(.custom("SF Pro Display Medium", size: 18))
                        .multilineTextAlignment(.center)
                        .frame(width: 280)
                }
                
                HStack{
                    // Click on the phone number to jump to the Calling Page
                    Button(action: {
                        let phone = "tel://"
                        let phoneNumberformatted = phone + phoneNumber
                        guard let url = URL(string: phoneNumberformatted) else { return }
                        UIApplication.shared.open(url)
                       }) {
                           Group{
                               Text("Call: ")
                                   .font(.custom("SF Pro Display Medium", size: 18))
                                   .foregroundColor(Color("TextColor")) +
                               Text(phoneNumber)
                                   .font(.custom("SF Pro Display Medium", size: 18))
                                   .foregroundColor(Color("LightBlueColor"))
                           }
                    }
                }
                // Click on the phone number to jump to the Mailing Page
                HStack{
                    Button(action: {
                        let mailTo = mail.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed)
                        let mailtoUrl = URL(string: mailTo!)!
                        if UIApplication.shared.canOpenURL(mailtoUrl) {
                                UIApplication.shared.open(mailtoUrl, options: [:])
                        }
                    }){
                        Group{
                            Text("Email: ")
                                .font(.custom("SF Pro Display Medium", size: 18))
                                .foregroundColor(Color("TextColor")) +
                            Text(mail)
                                .font(.custom("SF Pro Display Medium", size: 18))
                                .foregroundColor(Color("LightBlueColor"))
                        }
                    }
                }
                
                HStack{
                    Image("ic-clock")
                    Text("9:00 a.m.- 5:00 p.m.")
                        .font(.custom("SF Pro Display Medium", size: 15))
                }
            }
            Spacer()
        }
        .frame(width: 325, height: 227)
        .background(.white)
        .cornerRadius(20)
        .shadow(color: .gray.opacity(0.9), radius: 8,x: 8,y: 8)
    }
}

struct ContactPopupView_Previews: PreviewProvider {
    struct ContactPopupViewHolder: View {
    @State var isShowed = false

    var body: some View {
        ContactPopupView(isShowed: $isShowed)
        }
    }
    static var previews: some View {
        ContactPopupViewHolder()
    }
}
