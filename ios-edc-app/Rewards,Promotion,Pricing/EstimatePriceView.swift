//
//  EstimatePriceView.swift
//  ios-edc-app
//
//  Created by Shiying Cai on 2022/10/25.
//

import SwiftUI

struct EstimatePriceView: View {
    // Bind the orderItem value passed by the parent view - PricingView()
    @Binding var orderItem : String
    
    @State var search = ""
    @State private var contactAlert = false
    
    var body: some View {
        ZStack{
            VStack(alignment: .center){
                VStack{
                    HStack{
                        Text("Estimate the Price of your Order")
                            .font(.custom("SF Pro Display Bold", size: 22))
                            .foregroundColor(Color("LabelColor"))
                    }
                    HStack{
                        Text("Select the " + orderItem + " items you woud like added to your oder to estimate the price.")
                            .font(.custom("SF Pro Display Regular", size: 16))
                    }
                    HStack {
                        HStack{
                            Image("ic-search")
                            TextField("Search",text: $search)
                                .font(.custom("SF Pro Medium", size: 14))
                        }
                        .padding()
                        .background(RoundedRectangle(cornerRadius: 15).stroke(Color("StrokeColor"), lineWidth: 1.5)
                            .frame(height: 39)
                        )
                    }
                }
                .padding(20)
                
                ScrollView{
                    // Determine the value of orderItem
                    VStack{
                        switch orderItem{
                        case "Dry Cleaning":
                            PricingDryCleaningTab()
                        case "Laundry":
                            PricingLaundryTab()
                        case "Tailoring":
                            PricingTailoringTab()
                        case "Home Care":
                            PricingHomeTab()
                        case "Shoe Repair":
                            PricingShoeTab(contactAlert: $contactAlert)
                        case "Sports Equipment":
                            Text(orderItem)
                        default:
                            Text("Hello")
                        }
                    }
                    VStack{
                        Button(action:{
                            // some actions to show estimate total price
                        }){
                            Text("Estimate")
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
            }
            
            // Determine if the ContactPopupView() will show
            if self.contactAlert{
                GeometryReader{ _ in
                    ContactPopupView(isShowed: $contactAlert)
                        .frame(maxWidth: .infinity, maxHeight: .infinity)
                        .padding(.horizontal, 35)
                }.background(
                    Color.black.opacity(0.65)
                        .edgesIgnoringSafeArea(.all)
                        .onTapGesture {
                            withAnimation {
                                self.contactAlert.toggle()
                            }
                        }
                )
            }

        }
        .toolbar{
            ToolbarItem(placement: .navigationBarLeading) {
                Text(orderItem)
                    .font(.naviLable)
                    .foregroundColor(Color("NaviTextColor"))
            }
        }
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct EstimatePriceView_Previews: PreviewProvider {
    struct EstimatePriceViewHolder: View {
    @State var orderItem = "Dry Cleaning"

    var body: some View {
        EstimatePriceView(orderItem: $orderItem)
        }
    }
    static var previews: some View {
        EstimatePriceViewHolder()
    }
}
