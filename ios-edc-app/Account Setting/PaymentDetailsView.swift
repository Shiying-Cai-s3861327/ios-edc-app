//
//  PaymentView.swift
//  ios-edc-app
//
//  Created by Shiying Cai on 2022/10/20.
//

import SwiftUI


struct PaymentDetailsView: View {
    /*
     This view needs to distinguish whether the user has saved a payment method or not
     */
    @Binding var saved : Bool
    
    @State private var credit = ""
    @State private var visa4dig = "1234"
    @State private var master4dig = "1687"
    
    @State private var showAddPayment = false
    
    
    var body: some View {
        ZStack{
            Color("BackgroundColor")
                .ignoresSafeArea()
            
            VStack(spacing: 30){
                HStack{
                    Text("Saved Payment Methods")
                        .font(.popLable)
                    Spacer()
                        .frame(width: 120)
                }
                if self.saved{
                    // user has saved the payment method
                    VStack{
                        HStack{
                            VStack(alignment: .leading){
                                HStack{
                                    Image("img-visa")
                                    Text("card ending in " + self.visa4dig)
                                }
                                
                                HStack{
                                    Image("img-mastercard")
                                    Text("card ending in " + self.master4dig)
                                }
                            }
                            Spacer()
                                .frame(width: 100)
                        }
                        Spacer()
                            .frame(height: 20)
                    }
                }else{
                    // user has not saved the paymet method
                    VStack(alignment: .center){
                        HStack(spacing: 50){
                            Image("img-visa")
                            Image("img-mastercard")
                        }
                        
                        HStack{
                            Text("None")
                                .font(.custom("SF Pro Display Regular", size: 32))
                        }
                    }
                }

                HStack{
                    Button(action:{showAddPayment = true}){
                        Text("+ Add Payment Method")
                            .font(.custom("SF Pro Display Regular", size: 16.34))
                            .foregroundColor(Color.white)
                    }
                    .frame(width: 290.75, height: 41.79)
                    .background(Color("LinkColor"))
                    .cornerRadius(60)
                    .shadow(color: .gray.opacity(0.7), radius: 5,x: 5,y: 5)
                    
                    NavigationLink("", destination:  AddPaymentView(), isActive: $showAddPayment)
                    
                    Spacer()
                        .frame(width: 50)
                }
                Spacer()
                    .frame(height: 5)
                VStack(alignment: .leading, spacing: 10){
                    HStack{
                        Text("Referral Credits")
                            .font(.popLable)
                        Spacer()
                            .frame(width: 200)
                    }
                    Spacer()
                        .frame(height: 10)
                    HStack{
                        Text("Credits Earned")
                            .font(.custom("SF Pro Regular", size: 16))
                        Spacer()
                            .frame(width: 235)
                    }
                    
                    HStack{
                        TextField("",text: $credit)
                            .padding()
                            .frame(width: 342, height: 53)
                            .background(Color.white)
                            .cornerRadius(20)
                            .shadow(color: .gray.opacity(0.9), radius: 8,x: 0,y: 8)
                    }
                    Spacer()
                        .frame(height: 1)
                    HStack{
                        NavigationLink(destination: PromotionView()){
                            Text("Refer a friend to earn credits")
                                .font(.custom("SF Pro Medium", size: 14))
                                .foregroundColor(Color("LinkColor"))
                                .underline()
                        }
                    }
                }
                Spacer()
                    .frame(height: 100)
            }
        }
        .toolbar{
            ToolbarItem(placement: .navigationBarLeading) {
                Text("Payment Details")
                    .font(.naviLable)
                    .foregroundColor(Color("NaviTextColor"))
            }
        }
        .navigationBarTitleDisplayMode(.inline)
        
    }
}


struct PaymentDetailsView_Previews: PreviewProvider {
    struct PaymentDetailsViewHolder: View {
    @State var saved = false

    var body: some View {
        PaymentDetailsView(saved: $saved)
        }
    }
    static var previews: some View {
        PaymentDetailsViewHolder()
    }
}
