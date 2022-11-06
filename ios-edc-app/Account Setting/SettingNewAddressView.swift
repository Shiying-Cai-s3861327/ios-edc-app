//
//  SettingNewAddressView.swift
//  ios-edc-app
//  Setting New Address View
//  Created by Shiying Cai on 2022/11/3.
//

import SwiftUI

struct SettingNewAddressView: View {
    @State private var isExpanded = false
    @State private var selectedString = ""
    let items = ["Home", "Work", "Other"]
    
    @State private var address1 = ""
    @State private var address2 = ""
    @State private var city = ""
    @State private var province = ""
    @State private var postalCode = ""
    
    var body: some View {
        ZStack{
            Color("BackgroundColor")
                .ignoresSafeArea()
            ScrollView{
                VStack{
                    VStack(alignment: .center, spacing: 20){
                        HStack{
                            Text("NEW ADDRESS")
                                .font(.sansFont)
                                .foregroundColor(Color("NaviTextColor"))
                            Spacer()
                                .frame(width: 200)
                        }
                        HStack{
                            Text("ADDRESS TYPE")
                                .font(.tfLable)
                                .foregroundColor(Color("LabelColor"))
                            Spacer()
                                .frame(width: 230)
                        }
                    
                        HStack{
                            DisclosureGroup("\(selectedString)", isExpanded: $isExpanded){
                                VStack(spacing: 10){
                                    ForEach(items, id: \.self){ item in
                                        Text("\(item)")
                                            .font(.cbLable)
                                            .onTapGesture {
                                                self.selectedString = item
                                                withAnimation{
                                                    self.isExpanded.toggle()
                                                }
                                            }

                                    }

                                }
                                .frame(height: 80)
                            }
                            .padding()
                            .frame(width: 342)
                            .font(.custom("SF Pro Display Semibold", size: 18))
                            .foregroundColor(Color("TextColor"))
                            .background(Color.white)
                            .cornerRadius(20)
                            .shadow(color: .gray.opacity(0.7), radius: 8,x: 8,y: 8)
                        }
                        
                        HStack{
                            Text("ADDRESS 1")
                                .font(.tfLable)
                                .foregroundColor(Color("LabelColor"))
                            Spacer()
                                .frame(width: 260)
                        }
                        TextField("",text: $address1)
                            .padding()
                            .frame(width: 342, height: 49)
                            .background(Color.white)
                            .cornerRadius(20)
                            .shadow(color: .gray.opacity(0.7), radius: 8,x: 8,y: 8)
                        
                        HStack{
                            Text("ADDRESS 2 (Optional)")
                                .font(.tfLable)
                                .foregroundColor(Color("LabelColor"))
                            Spacer()
                                .frame(width: 190)
                        }
                        TextField("",text: $address2)
                            .padding()
                            .frame(width: 342, height: 49)
                            .background(Color.white)
                            .cornerRadius(20)
                            .shadow(color: .gray.opacity(0.7), radius: 8,x: 8,y: 8)
                        
                        VStack(alignment: .leading){

                            HStack{
                                HStack{
                                    Spacer()
                                        .frame(width: 10)
                                    Text("CITY")
                                        .font(.tfLable)
                                        .foregroundColor(Color("LabelColor"))
                                    Spacer()
                                        .frame(width: 200)
                                    Text("Province")
                                        .font(.tfLable)
                                        .foregroundColor(Color("LabelColor"))

                                }
                                
                            }
                            HStack{
                                TextField("",text: $city)
                                    .padding()
                                    .frame(width: 192, height: 49)
                                    .background(Color.white)
                                    .cornerRadius(20)
                                    .shadow(color: .gray.opacity(0.7), radius: 8,x: 8,y: 8)
                                Spacer()
                                    .frame(width: 37)
                                TextField("",text: $province)
                                    .padding()
                                    .frame(width: 110, height: 49)
                                    .background(Color.white)
                                    .cornerRadius(20)
                                    .shadow(color: .gray.opacity(0.7), radius: 8,x: 8,y: 8)
                            }
                        }
                        
                        HStack{
                            Text("POSTAL CODE")
                                .font(.tfLable)
                                .foregroundColor(Color("LabelColor"))
                            Spacer()
                                .frame(width: 240)
                        }
                        TextField("",text: $postalCode)
                            .padding()
                            .frame(width: 342, height: 49)
                            .background(Color.white)
                            .cornerRadius(20)
                            .shadow(color: .gray.opacity(0.7), radius: 8,x: 8,y: 8)
                    }
                    VStack{
                        HStack{
                            Button(action:{
                            
                            }){
                                Text("Save")
                                    .font(.custom("SF Pro Display Semibold", size: 12))
                                    .foregroundColor(Color.white)
                            }
                            .frame(width: 102, height: 30)
                            .background(Color.accentColor)
                            .cornerRadius(20)
                            .shadow(color: .gray.opacity(0.7), radius: 8,x: 8,y: 8)
                            .padding()
                            Spacer()
                                .frame(width: 240)
                        }
                        
                    }
                    
                }
            }
            .padding(20)
            
        }
        .toolbar{
            ToolbarItem(placement: .navigationBarLeading) {
                Text("New Address")
                    .font(.naviLable)
                    .foregroundColor(Color("NaviTextColor"))
            }
        }
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct SettingNewAddressView_Previews: PreviewProvider {
    static var previews: some View {
        SettingNewAddressView()
    }
}
