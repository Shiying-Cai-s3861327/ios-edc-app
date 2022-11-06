//
//  CurrentOrderTab.swift
//  ios-edc-app
//
//  Created by Shiying Cai on 2022/11/5.
//

import SwiftUI

// Variables in each current order
struct CurrentOrder: Identifiable, Hashable{
    var id = UUID()
    var orderNum: String
    var pickUpTime: String
    var pickUpDay: String
    var deliveryTime: String
    var deliveryDay: String
}

struct CurrentOrderTab: View {
    // Sample Data
    @State var sampleOrderList = [
        CurrentOrder(orderNum: "0001", pickUpTime: "9 AM - 12 PM", pickUpDay: "Mon. April 16, 2022", deliveryTime: "9 AM - 12 PM", deliveryDay: "Fri. April 20, 2022"),
        CurrentOrder(orderNum: "0002", pickUpTime: "9 AM - 12 PM", pickUpDay: "Mon. April 16, 2022", deliveryTime: "9 AM - 12 PM", deliveryDay: "Fri. April 20, 2022"),
        CurrentOrder(orderNum: "0003", pickUpTime: "9 AM - 12 PM", pickUpDay: "Mon. April 16, 2022", deliveryTime: "9 AM - 12 PM", deliveryDay: "Fri. April 20, 2022"),
        CurrentOrder(orderNum: "0004", pickUpTime: "9 AM - 12 PM", pickUpDay: "Mon. April 16, 2022", deliveryTime: "9 AM - 12 PM", deliveryDay: "Fri. April 20, 2022"),
        CurrentOrder(orderNum: "0005", pickUpTime: "9 AM - 12 PM", pickUpDay: "Mon. April 16, 2022", deliveryTime: "9 AM - 12 PM", deliveryDay: "Fri. April 20, 2022")
    ]
    
    @State private var isCanceled = false
    @State var cancelAlert = false
    
    var body: some View {
        ZStack{
            ScrollView{
                VStack(spacing: 8){
                    ForEach(sampleOrderList){ orderList in
                        VStack{
                            HStack(spacing: 90){
                                Group{
                                    Text("Order #") + Text(orderList.orderNum)
                                }
                                .font(.popLable)
                                .foregroundColor(Color("LabelColor"))
                            }
                            .frame(width: 350, height: 43)
                            .background(Color("BackgroundColor"))
                            .cornerRadius(20, corners: [.topLeft, .topRight])
                            
                            VStack(spacing: 20){
                                VStack(alignment: .leading){
                                    Group{
                                        VStack(alignment: .leading){
                                            Text("Pickup Time: ")+Text(orderList.pickUpTime)
                                            Text("Pickup Day: ")+Text(orderList.pickUpDay)
                                        }
                                        VStack(alignment: .leading){
                                            Text("Delivery Time: ")+Text(orderList.deliveryTime)
                                            Text("Delivery Day: ")+Text(orderList.deliveryDay)
                                        }
                                    }
                                    .font(.custom("SF Pro Semibold", size: 16))
                                    .frame(width: 328, height: 75)
                                    .background(Color("BackgroundColor"))
                                    .cornerRadius(20)
                                    .shadow(color: .gray.opacity(0.7), radius: 3,x: 0,y: 5)
                                    
                                }
                                
                                VStack{
                                    HStack{
                                        Spacer()
                                        // Click Cancel and the CancelPlanPopup will appear
                                        Button(action: {
                                            withAnimation{
                                                self.cancelAlert.toggle()
                                            }
                                        }, label: {
                                            Text("Cancel")
                                                .font(.custom("SF Pro Display Semibold", size: 12))
                                                .foregroundColor(.white)
                                        })
                                        .frame(width: 65, height: 25)
                                        .background(Color.accentColor)
                                        .cornerRadius(30)
                                        .shadow(color: .gray.opacity(0.7), radius: 3,x: 0,y: 3)
                                        
                                    }
                                    
                                }
                            }
                            Spacer()
                        }
                        .padding()
                        .frame(width: 350, height: 260)
                        .background(.white)
                        .cornerRadius(20)
                        .shadow(color: .gray.opacity(0.8), radius: 3,x: 0,y: 3)
                        
                    }
                    .padding()
                    
                }
                
            }
            .padding(10)
            .background(Color("BackgroundColor"))
            
            if self.isCanceled{
                // Delete Plan operations
            }
            
            // Determine if a pop-up window pops up
            if self.cancelAlert{
                GeometryReader{ _ in
                    CancelOrderPopup(isShowed: $cancelAlert, isCanceled: $isCanceled)
                        .frame(maxWidth: .infinity, maxHeight: .infinity)
                        .padding(.horizontal, 35)
                }.background(
                    Color.black.opacity(0.65)
                        .edgesIgnoringSafeArea(.all)
                        .onTapGesture {
                            withAnimation {
                                self.cancelAlert.toggle()
                            }
                        }
                )
            }
            
            
            
        }
    }
}

struct CurrentOrderTab_Previews: PreviewProvider {
    static var previews: some View {
        CurrentOrderTab()
    }
}
