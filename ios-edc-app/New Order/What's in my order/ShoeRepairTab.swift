//
//  ShoeRepairTab.swift
//  ios-edc-app
//
//  Created by Shiying Cai on 2022/10/23.
//

import SwiftUI
import Combine


struct ShoeRepairTab: View {
    // Shoe Repair
    @State var shoeShine = ""
    @State var heelTipRepair = ""
    @State var cleanRestore = ""
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10){
            HStack{
                Text("shoe repair")
                    .textCase(.uppercase)
                    .font(.custom("SF Pro Bold", size: 16))
            }
            VStack{
                Group{
                    VStack(alignment: .leading){
                        HStack(spacing: 180){
                            VStack(alignment: .leading){
                                Text("Shoe Shine")
                                Text("$14.99")
                            }
                            HStack{
                                Button(action: {
                                    // some logical operations
                                }, label: {
                                    Image("ic-minus")
                                })
                                TextField("", text: $shoeShine)
                                    .keyboardType(.numberPad)
                                    .padding()
                                    .frame(width: 25, height: 25)
                                    .background(Color.white)
                                    .cornerRadius(5)
                                    .shadow(color: .gray.opacity(0.8), radius: 3,x: 3,y: 2)
                                    .onReceive(Just(shoeShine)) { newValue in
                                        let filtered = newValue.filter { "0123456789".contains($0) }
                                        if filtered != newValue {
                                            self.shoeShine = filtered
                                        }
                                    }
                                Button(action: {
                                    // some logical operations
                                }, label: {
                                    Image("ic-plus")
                                })
                            }
                        }
                        Image("ic-line")
                    }

                    VStack(alignment: .leading){
                        HStack(spacing: 158){
                            VStack(alignment: .leading){
                                Text("Heel Tip Repair")
                                Text("$24.99+")
                            }
                            HStack{
                                Button(action: {
                                    // some logical operations
                                }, label: {
                                    Image("ic-minus")
                                })
                                TextField("", text: $heelTipRepair)
                                    .keyboardType(.numberPad)
                                    .padding()
                                    .frame(width: 25, height: 25)
                                    .background(Color.white)
                                    .cornerRadius(5)
                                    .shadow(color: .gray.opacity(0.8), radius: 3,x: 3,y: 2)
                                    .onReceive(Just(heelTipRepair)) { newValue in
                                        let filtered = newValue.filter { "0123456789".contains($0) }
                                        if filtered != newValue {
                                            self.heelTipRepair = filtered
                                        }
                                    }
                                Button(action: {
                                    // some logical operations
                                }, label: {
                                    Image("ic-plus")
                                })
                            }
                        }
                        Image("ic-line")
                    }

                    VStack(alignment: .leading){
                        HStack(spacing: 153){
                            VStack(alignment: .leading){
                                Text("Clean & Restore")
                                Text("$49.99+")
                            }
                            HStack{
                                Button(action: {
                                    // some logical operations
                                }, label: {
                                    Image("ic-minus")
                                })
                                TextField("", text: $cleanRestore)
                                    .keyboardType(.numberPad)
                                    .padding()
                                    .frame(width: 25, height: 25)
                                    .background(Color.white)
                                    .cornerRadius(5)
                                    .shadow(color: .gray.opacity(0.8), radius: 3,x: 3,y: 2)
                                    .onReceive(Just(cleanRestore)) { newValue in
                                        let filtered = newValue.filter { "0123456789".contains($0) }
                                        if filtered != newValue {
                                            self.cleanRestore = filtered
                                        }
                                    }
                                Button(action: {
                                    // some logical operations
                                }, label: {
                                    Image("ic-plus")
                                })
                            }
                        }
                    }
                }
                .font(.custom("SF Pro Display", size: 14))
            }
        }
        .frame(width: 342, height: 220)
        .cornerRadius(30)
        .background(
            RoundedRectangle(cornerRadius: 30)
                .fill(Color.white)
                .shadow(color: .gray.opacity(0.5), radius: 3,x: 3,y: 3)
        )
        .padding(20)
    }
}

struct ShoeRepairTab_Previews: PreviewProvider {
    static var previews: some View {
        ShoeRepairTab()
    }
}
