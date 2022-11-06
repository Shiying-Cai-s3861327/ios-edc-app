//
//  TailoringTab.swift
//  ios-edc-app
//
//  Created by Shiying Cai on 2022/10/23.
//

import SwiftUI
import Combine

struct TailoringTab: View {
    // Tailoring var
    @State var buttons = ""
    @State var hemmingPants = ""
    @State var hemmingSkirt = ""
    @State var minorClothing = ""
    @State var majorClothing = ""
    var body: some View {
        VStack(alignment: .leading, spacing: 10){
            HStack{
                Text("tailoring")
                    .textCase(.uppercase)
                    .font(.custom("SF Pro Bold", size: 16))
            }
            VStack{
                Group{
                    VStack(alignment: .leading){
                        HStack(spacing: 190){
                            VStack(alignment: .leading){
                                Text("Buttons")
                                Text("$5.50+")
                            }
                            HStack{
                                Button(action: {
                                    // some logical operations
                                }, label: {
                                    Image("ic-minus")
                                })
                                TextField("", text: $buttons)
                                    .keyboardType(.numberPad)
                                    .padding()
                                    .frame(width: 25, height: 25)
                                    .background(Color.white)
                                    .cornerRadius(5)
                                    .shadow(color: .gray.opacity(0.8), radius: 3,x: 3,y: 2)
                                    .onReceive(Just(buttons)) { newValue in
                                        let filtered = newValue.filter { "0123456789".contains($0) }
                                        if filtered != newValue {
                                            self.buttons = filtered
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
                        HStack(spacing: 135){
                            VStack(alignment: .leading){
                                Text("Hemming - Pants")
                                Text("$12.99")
                            }
                            HStack{
                                Button(action: {
                                    // some logical operations
                                }, label: {
                                    Image("ic-minus")
                                })
                                TextField("", text: $hemmingPants)
                                    .keyboardType(.numberPad)
                                    .padding()
                                    .frame(width: 25, height: 25)
                                    .background(Color.white)
                                    .cornerRadius(5)
                                    .shadow(color: .gray.opacity(0.8), radius: 3,x: 3,y: 2)
                                    .onReceive(Just(hemmingPants)) { newValue in
                                        let filtered = newValue.filter { "0123456789".contains($0) }
                                        if filtered != newValue {
                                            self.hemmingPants = filtered
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
                        HStack(spacing: 103){
                            VStack(alignment: .leading){
                                Text("Hemming - Skirt/Dress")
                                Text("$19.99")
                            }
                            HStack{
                                Button(action: {
                                    // some logical operations
                                }, label: {
                                    Image("ic-minus")
                                })
                                TextField("", text: $hemmingSkirt)
                                    .keyboardType(.numberPad)
                                    .padding()
                                    .frame(width: 25, height: 25)
                                    .background(Color.white)
                                    .cornerRadius(5)
                                    .shadow(color: .gray.opacity(0.8), radius: 3,x: 3,y: 2)
                                    .onReceive(Just(hemmingSkirt)) { newValue in
                                        let filtered = newValue.filter { "0123456789".contains($0) }
                                        if filtered != newValue {
                                            self.hemmingSkirt = filtered
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
                        HStack(spacing: 112){
                            VStack(alignment: .leading){
                                Text("Minor Clothing Repair")
                                Text("$19.99")
                            }
                            HStack{
                                Button(action: {
                                    // some logical operations
                                }, label: {
                                    Image("ic-minus")
                                })
                                TextField("", text: $minorClothing)
                                    .keyboardType(.numberPad)
                                    .padding()
                                    .frame(width: 25, height: 25)
                                    .background(Color.white)
                                    .cornerRadius(5)
                                    .shadow(color: .gray.opacity(0.8), radius: 3,x: 3,y: 2)
                                    .onReceive(Just(minorClothing)) { newValue in
                                        let filtered = newValue.filter { "0123456789".contains($0) }
                                        if filtered != newValue {
                                            self.minorClothing = filtered
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
                        HStack(spacing: 116){
                            VStack(alignment: .leading){
                                Text("Major Clothing Repair")
                                Text("$29.00+")
                            }
                            HStack{
                                Button(action: {
                                    // some logical operations
                                }, label: {
                                    Image("ic-minus")
                                })
                                TextField("", text: $majorClothing)
                                    .keyboardType(.numberPad)
                                    .padding()
                                    .frame(width: 25, height: 25)
                                    .background(Color.white)
                                    .cornerRadius(5)
                                    .shadow(color: .gray.opacity(0.8), radius: 3,x: 3,y: 2)
                                    .onReceive(Just(majorClothing)) { newValue in
                                        let filtered = newValue.filter { "0123456789".contains($0) }
                                        if filtered != newValue {
                                            self.majorClothing = filtered
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
        .frame(width: 342, height: 300)
        .cornerRadius(30)
        .background(
            RoundedRectangle(cornerRadius: 30)
                .fill(Color.white)
                .shadow(color: .gray.opacity(0.5), radius: 3,x: 3,y: 3)
        )
        .padding(20)
    }
}

struct TailoringTab_Previews: PreviewProvider {
    static var previews: some View {
        TailoringTab()
    }
}
