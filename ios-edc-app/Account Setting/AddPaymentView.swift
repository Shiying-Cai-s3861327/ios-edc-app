//
//  AddPaymentView.swift
//  ios-edc-app
//  Add New Card View
//  Created by Shiying Cai on 2022/10/22.
//

import SwiftUI
import Combine

struct AddPaymentView: View {
    
    @State var holderName = ""
    @State var cardNumber = ""
    @State var expiryDate = ""
    @State var cvv = ""
    
    @State private var checked = false
    
    var body: some View {
        ZStack{
            Color("BackgroundColor")
                .ignoresSafeArea()
            VStack(spacing: 30){
                HStack{
                    Text("Add New Card")
                        .font(.popLable)
                    Spacer()
                        .frame(width: 220)
                }
                
                VStack{
                    VStack(alignment: .leading){
                        HStack{
                            Text("cardholder name")
                                .textCase(.uppercase)
                                .font(.tfLable)
                                .foregroundColor(Color("LabelColor"))
                        }

                        HStack{
                            TextField("",text: $holderName)
                                .padding()
                                .frame(width: 342, height: 49)
                                .background(Color.white)
                                .cornerRadius(60)
                                .shadow(color: .gray.opacity(0.7), radius: 8,x: 8,y: 8)
                        }
                    }
                    
                    VStack(alignment: .leading){
                        HStack{
                            Text("card number")
                                .textCase(.uppercase)
                                .font(.tfLable)
                                .foregroundColor(Color("LabelColor"))
                        }

                        HStack{
                            TextField("", text: $cardNumber)
                                .keyboardType(.numberPad)
                                .padding()
                                .frame(width: 342, height: 49)
                                .background(Color.white)
                                .cornerRadius(60)
                                .shadow(color: .gray.opacity(0.7), radius: 8,x: 8,y: 8)
                                .onReceive(Just(cardNumber)) { newValue in
                                    let filtered = newValue.filter { "0123456789".contains($0) }
                                    if filtered != newValue {
                                        self.cardNumber = filtered
                                    }
                                }
                        }
                    }
                    
                    HStack(spacing: 55){
                        VStack(alignment: .leading){
                            HStack{
                                Text("expiry date(mm/yy)")
                                    .textCase(.uppercase)
                                    .font(.tfLable)
                                    .foregroundColor(Color("LabelColor"))
                                
                            }

                            HStack{
                                // it should have some validation here
                                TextField("", text: $expiryDate)
                                    .padding()
                                    .frame(width: 169, height: 49)
                                    .background(Color.white)
                                    .cornerRadius(60)
                                    .shadow(color: .gray.opacity(0.7), radius: 8,x: 8,y: 8)
                            }
                        }
                        
                        VStack(alignment: .leading){
                            HStack{
                                Text("ccv")
                                    .textCase(.uppercase)
                                    .font(.tfLable)
                                    .foregroundColor(Color("LabelColor"))
                            }

                            HStack{
                                TextField("", text: $expiryDate)
                                    .padding()
                                    .frame(width: 115, height: 49)
                                    .background(Color.white)
                                    .cornerRadius(60)
                                    .shadow(color: .gray.opacity(0.7), radius: 8,x: 8,y: 8)
                            }
                        }
                    }
                }
                
                HStack{
                    CheckBoxView(checked: $checked)
                    Text("Make Default Card")
                        .font(.custom("SF Pro Display Semibold", size: 14))
                        .foregroundColor(Color("LabelColor"))
                    Spacer()
                        .frame(width: 200)
                }

                HStack{
                    Button(action:{
                        // some database operation
                    }){
                        Text("Add Card")
                            .font(.btnLable)
                            .foregroundColor(Color.white)
                    }
                    .frame(width: 336, height: 49)
                    .background(Color("LinkColor"))
                    .cornerRadius(60)
                    .shadow(color: .gray.opacity(0.7), radius: 8,x: 8,y: 8)
                    .padding()
                }
                Spacer()
                    .frame(height: 100)
            }
            
        }
        .toolbar{
            ToolbarItem(placement: .navigationBarLeading) {
                Text("Add New Method of Payment")
                    .font(.naviLable)
                    .foregroundColor(Color("NaviTextColor"))
            }
        }
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct AddPaymentView_Previews: PreviewProvider {
    static var previews: some View {
        AddPaymentView()
    }
}
