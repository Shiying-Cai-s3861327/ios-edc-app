//
//  PastOrdersTab.swift
//  ios-edc-app
//
//  Created by Shiying Cai on 2022/11/4.
//

import SwiftUI

// Variables in each order
struct PastOrder: Identifiable, Hashable{
    var id = UUID()
    var orderNum: String
    var pickUpTime: String
    var pickUpDay: String
    var deliveryTime: String
    var deliveryDay: String
}

struct PastOrdersTab: View {
    // Sample Data
    @State var sampleOrderList = [
        PastOrder(orderNum: "0001", pickUpTime: "9 AM - 12 PM", pickUpDay: "Mon. April 16, 2022", deliveryTime: "9 AM - 12 PM", deliveryDay: "Fri. April 20, 2022"),
        PastOrder(orderNum: "0002", pickUpTime: "9 AM - 12 PM", pickUpDay: "Mon. April 16, 2022", deliveryTime: "9 AM - 12 PM", deliveryDay: "Fri. April 20, 2022"),
        PastOrder(orderNum: "0003", pickUpTime: "9 AM - 12 PM", pickUpDay: "Mon. April 16, 2022", deliveryTime: "9 AM - 12 PM", deliveryDay: "Fri. April 20, 2022"),
        PastOrder(orderNum: "0004", pickUpTime: "9 AM - 12 PM", pickUpDay: "Mon. April 16, 2022", deliveryTime: "9 AM - 12 PM", deliveryDay: "Fri. April 20, 2022"),
        PastOrder(orderNum: "0005", pickUpTime: "9 AM - 12 PM", pickUpDay: "Mon. April 16, 2022", deliveryTime: "9 AM - 12 PM", deliveryDay: "Fri. April 20, 2022")
        
    ]
    
    var body: some View {
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
                        
                        Spacer()
                            .frame(height: 36)
                    }
                    .padding()
                    .frame(width: 350, height: 245)
                    .background(.white)
                    .cornerRadius(20)
                    .shadow(color: .gray.opacity(0.8), radius: 3,x: 0,y: 3)
                }
                .padding()
            }
        }
        .padding(20)
        .background(Color("BackgroundColor"))
    }
    
}

struct PastOrdersTab_Previews: PreviewProvider {
    static var previews: some View {
        PastOrdersTab()
    }
}
