//
//  DryCleaningTab.swift
//  ios-edc-app
//
//  Created by Shiying Cai on 2022/10/23.
//

import SwiftUI
import Combine

struct DryCleaningTab: View {
    @State var blouse = ""
    @State var coat = ""
    @State var downJacket = ""
    @State var pleated = ""
    @State var silkDress = ""
    @State var silkBeadedDress = ""
    @State var linedPants = ""
    @State var silkPants = ""
    @State var polo = ""
    @State var gooseJacket = ""
    @State var leatherJacket = ""
    @State var suedeJacket = ""
    @State var handBag = ""
    @State var gown = ""
    @State var weddingDress = ""
    var body: some View {
        VStack(alignment: .leading, spacing: 10){
            HStack{
                Text("dry cleaning")
                    .textCase(.uppercase)
                    .font(.custom("SF Pro Bold", size: 16))
            }
            VStack{
                Group{
                    VStack(alignment: .leading){
                        HStack(spacing: 195){
                            VStack(alignment: .leading){
                                Text("Blouse")
                                Text("$7.99")
                            }
                            HStack{
                                Button(action: {
                                    // some logical operations
                                }, label: {
                                    Image("ic-minus")
                                })
                                TextField("", text: $blouse)
                                    .keyboardType(.numberPad)
                                    .padding()
                                    .frame(width: 25, height: 25)
                                    .background(Color.white)
                                    .cornerRadius(5)
                                    .shadow(color: .gray.opacity(0.8), radius: 3,x: 3,y: 2)
                                    .onReceive(Just(blouse)) { newValue in
                                        let filtered = newValue.filter { "0123456789".contains($0) }
                                        if filtered != newValue {
                                            self.blouse = filtered
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
                        HStack(spacing: 200){
                            VStack(alignment: .leading){
                                Text("Coat")
                                Text("$9.99")
                            }
                            HStack{
                                Button(action: {
                                    // some logical operations
                                }, label: {
                                    Image("ic-minus")
                                })
                                TextField("", text: $coat)
                                    .keyboardType(.numberPad)
                                    .padding()
                                    .frame(width: 25, height: 25)
                                    .background(Color.white)
                                    .cornerRadius(5)
                                    .shadow(color: .gray.opacity(0.8), radius: 3,x: 3,y: 2)
                                    .onReceive(Just(coat)) { newValue in
                                        let filtered = newValue.filter { "0123456789".contains($0) }
                                        if filtered != newValue {
                                            self.coat = filtered
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
                        HStack(spacing: 160){
                            VStack(alignment: .leading){
                                Text("Down Jacket")
                                Text("$24.99")
                            }
                            HStack{
                                Button(action: {
                                    // some logical operations
                                }, label: {
                                    Image("ic-minus")
                                })
                                TextField("", text: $downJacket)
                                    .keyboardType(.numberPad)
                                    .padding()
                                    .frame(width: 25, height: 25)
                                    .background(Color.white)
                                    .cornerRadius(5)
                                    .shadow(color: .gray.opacity(0.8), radius: 3,x: 3,y: 2)
                                    .onReceive(Just(downJacket)) { newValue in
                                        let filtered = newValue.filter { "0123456789".contains($0) }
                                        if filtered != newValue {
                                            self.downJacket = filtered
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
                        HStack(spacing: 110){
                            VStack(alignment: .leading){
                                Text("Pleated / Lined Dress")
                                Text("$34.99")
                            }
                            HStack{
                                Button(action: {
                                    // some logical operations
                                }, label: {
                                    Image("ic-minus")
                                })
                                TextField("", text: $pleated)
                                    .keyboardType(.numberPad)
                                    .padding()
                                    .frame(width: 25, height: 25)
                                    .background(Color.white)
                                    .cornerRadius(5)
                                    .shadow(color: .gray.opacity(0.8), radius: 3,x: 3,y: 2)
                                    .onReceive(Just(pleated)) { newValue in
                                        let filtered = newValue.filter { "0123456789".contains($0) }
                                        if filtered != newValue {
                                            self.pleated = filtered
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
                        HStack(spacing: 120){
                            VStack(alignment: .leading){
                                Text("Silk / Beaded Dress")
                                Text("$15.99")
                            }
                            HStack{
                                Button(action: {
                                    // some logical operations
                                }, label: {
                                    Image("ic-minus")
                                })
                                TextField("", text: $silkDress)
                                    .keyboardType(.numberPad)
                                    .padding()
                                    .frame(width: 25, height: 25)
                                    .background(Color.white)
                                    .cornerRadius(5)
                                    .shadow(color: .gray.opacity(0.8), radius: 3,x: 3,y: 2)
                                    .onReceive(Just(silkDress)) { newValue in
                                        let filtered = newValue.filter { "0123456789".contains($0) }
                                        if filtered != newValue {
                                            self.silkDress = filtered
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
                        HStack(spacing: 127){
                            VStack(alignment: .leading){
                                Text("Silk Beaded Dress")
                                Text("$19.99")
                            }
                            HStack{
                                Button(action: {
                                    // some logical operations
                                }, label: {
                                    Image("ic-minus")
                                })
                                TextField("", text: $silkBeadedDress)
                                    .keyboardType(.numberPad)
                                    .padding()
                                    .frame(width: 25, height: 25)
                                    .background(Color.white)
                                    .cornerRadius(5)
                                    .shadow(color: .gray.opacity(0.8), radius: 3,x: 3,y: 2)
                                    .onReceive(Just(silkBeadedDress)) { newValue in
                                        let filtered = newValue.filter { "0123456789".contains($0) }
                                        if filtered != newValue {
                                            self.silkBeadedDress = filtered
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
                        HStack(spacing: 142){
                            VStack(alignment: .leading){
                                Text("Lined Silk Pants")
                                Text("$24.99")
                            }
                            HStack{
                                Button(action: {
                                    // some logical operations
                                }, label: {
                                    Image("ic-minus")
                                })
                                TextField("", text: $linedPants)
                                    .keyboardType(.numberPad)
                                    .padding()
                                    .frame(width: 25, height: 25)
                                    .background(Color.white)
                                    .cornerRadius(5)
                                    .shadow(color: .gray.opacity(0.8), radius: 3,x: 3,y: 2)
                                    .onReceive(Just(linedPants)) { newValue in
                                        let filtered = newValue.filter { "0123456789".contains($0) }
                                        if filtered != newValue {
                                            self.linedPants = filtered
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
                        HStack(spacing: 147){
                            VStack(alignment: .leading){
                                Text("Plain Silk Pants")
                                Text("$34.99")
                            }
                            HStack{
                                Button(action: {
                                    // some logical operations
                                }, label: {
                                    Image("ic-minus")
                                })
                                TextField("", text: $silkPants)
                                    .keyboardType(.numberPad)
                                    .padding()
                                    .frame(width: 25, height: 25)
                                    .background(Color.white)
                                    .cornerRadius(5)
                                    .shadow(color: .gray.opacity(0.8), radius: 3,x: 3,y: 2)
                                    .onReceive(Just(silkPants)) { newValue in
                                        let filtered = newValue.filter { "0123456789".contains($0) }
                                        if filtered != newValue {
                                            self.silkPants = filtered
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
                        HStack(spacing: 150){
                            VStack(alignment: .leading){
                                Text("Polo/Golf Shirt")
                                Text("$8.49")
                            }
                            HStack{
                                Button(action: {
                                    // some logical operations
                                }, label: {
                                    Image("ic-minus")
                                })
                                TextField("", text: $polo)
                                    .keyboardType(.numberPad)
                                    .padding()
                                    .frame(width: 25, height: 25)
                                    .background(Color.white)
                                    .cornerRadius(5)
                                    .shadow(color: .gray.opacity(0.8), radius: 3,x: 3,y: 2)
                                    .onReceive(Just(polo)) { newValue in
                                        let filtered = newValue.filter { "0123456789".contains($0) }
                                        if filtered != newValue {
                                            self.polo = filtered
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
                        HStack(spacing: 105){
                            VStack(alignment: .leading){
                                Text("Canada Goose Jacket")
                                Text("$69.99+")
                            }
                            HStack{
                                Button(action: {
                                    // some logical operations
                                }, label: {
                                    Image("ic-minus")
                                })
                                TextField("", text: $gooseJacket)
                                    .keyboardType(.numberPad)
                                    .padding()
                                    .frame(width: 25, height: 25)
                                    .background(Color.white)
                                    .cornerRadius(5)
                                    .shadow(color: .gray.opacity(0.8), radius: 3,x: 3,y: 2)
                                    .onReceive(Just(gooseJacket)) { newValue in
                                        let filtered = newValue.filter { "0123456789".contains($0) }
                                        if filtered != newValue {
                                            self.gooseJacket = filtered
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
                }
                .font(.custom("SF Pro Display", size: 14))
                Group{
                    VStack(alignment: .leading){
                        HStack(spacing: 148){
                            VStack(alignment: .leading){
                                Text("Leather Jacket")
                                Text("$74.99+")
                            }
                            HStack{
                                Button(action: {
                                    // some logical operations
                                }, label: {
                                    Image("ic-minus")
                                })
                                TextField("", text: $leatherJacket)
                                    .keyboardType(.numberPad)
                                    .padding()
                                    .frame(width: 25, height: 25)
                                    .background(Color.white)
                                    .cornerRadius(5)
                                    .shadow(color: .gray.opacity(0.8), radius: 3,x: 3,y: 2)
                                    .onReceive(Just(leatherJacket)) { newValue in
                                        let filtered = newValue.filter { "0123456789".contains($0) }
                                        if filtered != newValue {
                                            self.leatherJacket = filtered
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
                        HStack(spacing: 156){
                            VStack(alignment: .leading){
                                Text("Suede Jacket")
                                Text("$49.99+")
                            }
                            HStack{
                                Button(action: {
                                    // some logical operations
                                }, label: {
                                    Image("ic-minus")
                                })
                                TextField("", text: $suedeJacket)
                                    .keyboardType(.numberPad)
                                    .padding()
                                    .frame(width: 25, height: 25)
                                    .background(Color.white)
                                    .cornerRadius(5)
                                    .shadow(color: .gray.opacity(0.8), radius: 3,x: 3,y: 2)
                                    .onReceive(Just(suedeJacket)) { newValue in
                                        let filtered = newValue.filter { "0123456789".contains($0) }
                                        if filtered != newValue {
                                            self.suedeJacket = filtered
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
                        HStack(spacing: 172){
                            VStack(alignment: .leading){
                                Text("Hand Bags")
                                Text("$47.99+")
                            }
                            HStack{
                                Button(action: {
                                    // some logical operations
                                }, label: {
                                    Image("ic-minus")
                                })
                                TextField("", text: $handBag)
                                    .keyboardType(.numberPad)
                                    .padding()
                                    .frame(width: 25, height: 25)
                                    .background(Color.white)
                                    .cornerRadius(5)
                                    .shadow(color: .gray.opacity(0.8), radius: 3,x: 3,y: 2)
                                    .onReceive(Just(handBag)) { newValue in
                                        let filtered = newValue.filter { "0123456789".contains($0) }
                                        if filtered != newValue {
                                            self.handBag = filtered
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
                        HStack(spacing: 184){
                            VStack(alignment: .leading){
                                Text("Gown")
                                Text("$54.99+")
                            }
                            HStack{
                                Button(action: {
                                    // some logical operations
                                }, label: {
                                    Image("ic-minus")
                                })
                                TextField("", text: $gown)
                                    .keyboardType(.numberPad)
                                    .padding()
                                    .frame(width: 25, height: 25)
                                    .background(Color.white)
                                    .cornerRadius(5)
                                    .shadow(color: .gray.opacity(0.8), radius: 3,x: 3,y: 2)
                                    .onReceive(Just(gown)) { newValue in
                                        let filtered = newValue.filter { "0123456789".contains($0) }
                                        if filtered != newValue {
                                            self.gown = filtered
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
                        HStack(spacing: 147){
                            VStack(alignment: .leading){
                                Text("Wedding Dress")
                                Text("$350.00+")
                            }
                            HStack{
                                Button(action: {
                                    // some logical operations
                                }, label: {
                                    Image("ic-minus")
                                })
                                TextField("", text: $weddingDress)
                                    .keyboardType(.numberPad)
                                    .padding()
                                    .frame(width: 25, height: 25)
                                    .background(Color.white)
                                    .cornerRadius(5)
                                    .shadow(color: .gray.opacity(0.8), radius: 3,x: 3,y: 2)
                                    .onReceive(Just(weddingDress)) { newValue in
                                        let filtered = newValue.filter { "0123456789".contains($0) }
                                        if filtered != newValue {
                                            self.weddingDress = filtered
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
        .frame(width: 342, height: 860)
        .cornerRadius(30)
        .background(
            RoundedRectangle(cornerRadius: 30)
                .fill(Color.white)
                .shadow(color: .gray.opacity(0.5), radius: 3,x: 3,y: 3)
        )
        .padding(20)
    }
}

struct DryCleaningTab_Previews: PreviewProvider {
    static var previews: some View {
        DryCleaningTab()
    }
}
