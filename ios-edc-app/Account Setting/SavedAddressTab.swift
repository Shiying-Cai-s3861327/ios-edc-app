//
//  SavedAddressTab.swift
//  ios-edc-app
//  Saved Address subview
//  Created by Shiying Cai on 2022/11/3.
//

import SwiftUI

struct Address: Identifiable, Hashable{
    var id = UUID()
    var addressType: String
    var address: String
    var city: String
    var province: String
    var postalCode: String
}

struct SavedAddressTab: View {
    @State var sampleAddressList = [
        Address(addressType: "Home", address: "1237 Short Lane Boulevard apt#306", city: "Toronto", province: "ON", postalCode: "L7O 8U9"),
        Address(addressType: "Home", address: "1237 Short Lane Boulevard apt#307", city: "Toronto", province: "ON", postalCode: "L7O 8U9"),
        Address(addressType: "Home", address: "1237 Short Lane Boulevard apt#308", city: "Toronto", province: "ON", postalCode: "L7O 8U9"),
        Address(addressType: "Home", address: "1237 Short Lane Boulevard apt#309", city: "Toronto", province: "ON", postalCode: "L7O 8U9"),
        Address(addressType: "Home", address: "1237 Short Lane Boulevard apt#310", city: "Toronto", province: "ON", postalCode: "L7O 8U9")
    ]
    
    var body: some View {
        ScrollView{
            // Build a view of the saved addresses one by one
            ForEach(sampleAddressList){ addressList in
                HStack{
                    VStack(alignment: .leading){
                        Group{
                            Text(addressList.addressType)
                                .textCase(.uppercase)
                                .font(.custom("SF Pro Bold", size: 16))
                            Text(addressList.address)
                                .font(.custom("SF Pro Regular", size: 16))
                            Text(addressList.city + ", " + addressList.province)
                                .font(.custom("SF Pro Regular", size: 16))
                        }
                        .foregroundColor(Color("LabelColor"))
                        HStack{
                            Text(addressList.postalCode)
                            Spacer()
                            Button(action: {
                                self.delete(at: self.sampleAddressList.firstIndex(where: {
                                    $0.id == addressList.id
                                })!)
                            }, label: {
                                Text("Delete")
                                    .foregroundColor(Color.white)
                                    .font(.custom("SF Pro Semibold", size: 12))
                            })
                            .frame(width: 67, height: 23)
                            .background(Color.accentColor)
                            .cornerRadius(18)
                            .shadow(color: .gray.opacity(0.7), radius: 3,x: 0,y: 2)
                        }
                    }
                    .padding()
                }
                .background(Color("AddressTabColor"))
                .cornerRadius(30)
            }
        }
        .padding(10)
        .background(Color("BackgroundColor"))
    }
    
    func delete(at index: Int){
        sampleAddressList.remove(at: index)
    }
}

struct SavedAddressTab_Previews: PreviewProvider {
    static var previews: some View {
        SavedAddressTab()
    }
}
