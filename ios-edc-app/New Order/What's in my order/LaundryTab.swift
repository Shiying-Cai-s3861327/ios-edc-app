//
//  LaundryTab.swift
//  ios-edc-app
//
//  Created by Shiying Cai on 2022/10/23.
//

import SwiftUI
import Combine

struct LaundryTab: View {
    // Laundry var
    @State var launderedShirt = ""
    @State var handPressed = ""
    @State var folded = ""
    var body: some View {
        VStack(alignment: .leading, spacing: 10){
            HStack{
                Text("laundry")
                    .textCase(.uppercase)
                    .font(.custom("SF Pro Bold", size: 16))
            }
            VStack{
                Group{
                    VStack(alignment: .leading){
                        HStack(spacing: 140){
                            VStack(alignment: .leading){
                                Text("Laundered Shirt")
                                Text("$6.49")
                            }
                            HStack{
                                Button(action: {
                                    // some logical operations
                                }, label: {
                                    Image("ic-minus")
                                })
                                TextField("", text: $launderedShirt)
                                    .keyboardType(.numberPad)
                                    .padding()
                                    .frame(width: 25, height: 25)
                                    .background(Color.white)
                                    .cornerRadius(5)
                                    .shadow(color: .gray.opacity(0.8), radius: 3,x: 3,y: 2)
                                    .onReceive(Just(launderedShirt)) { newValue in
                                        let filtered = newValue.filter { "0123456789".contains($0) }
                                        if filtered != newValue {
                                            self.launderedShirt = filtered
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
                        HStack(spacing: 46){
                            VStack(alignment: .leading){
                                Text("Laundered Shirt - Hand Pressed")
                                Text("$6.49")
                            }
                            HStack{
                                Button(action: {
                                    // some logical operations
                                }, label: {
                                    Image("ic-minus")
                                })
                                TextField("", text: $handPressed)
                                    .keyboardType(.numberPad)
                                    .padding()
                                    .frame(width: 25, height: 25)
                                    .background(Color.white)
                                    .cornerRadius(5)
                                    .shadow(color: .gray.opacity(0.8), radius: 3,x: 3,y: 2)
                                    .onReceive(Just(handPressed)) { newValue in
                                        let filtered = newValue.filter { "0123456789".contains($0) }
                                        if filtered != newValue {
                                            self.handPressed = filtered
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
                        HStack(spacing: 90){
                            VStack(alignment: .leading){
                                Text("Laundered Shirt - Folded")
                                Text("$6.49")
                            }
                            HStack{
                                Button(action: {
                                    // some logical operations
                                }, label: {
                                    Image("ic-minus")
                                })
                                TextField("", text: $folded)
                                    .keyboardType(.numberPad)
                                    .padding()
                                    .frame(width: 25, height: 25)
                                    .background(Color.white)
                                    .cornerRadius(5)
                                    .shadow(color: .gray.opacity(0.8), radius: 3,x: 3,y: 2)
                                    .onReceive(Just(folded)) { newValue in
                                        let filtered = newValue.filter { "0123456789".contains($0) }
                                        if filtered != newValue {
                                            self.folded = filtered
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
        .frame(width: 342, height: 200)
        //.cornerRadius(30)
        .background(
            RoundedRectangle(cornerRadius: 30)
                .fill(Color.white)
                .shadow(color: .gray.opacity(0.5), radius: 3,x: 3,y: 3)
        )
        .padding(20)
    }
}

struct LaundryTab_Previews: PreviewProvider {
    static var previews: some View {
        LaundryTab()
    }
}
