//
//  HomeCareTab.swift
//  ios-edc-app
//
//  Created by Shiying Cai on 2022/10/23.
//

import SwiftUI
import Combine

struct HomeCareTab: View {
    // Home Care var
    @State var cushion = ""
    @State var rug = ""
    @State var duvet = ""
    @State var downDuvet = ""
    @State var downCover = ""
    @State var pillow = ""
    @State var caseSet = ""
    @State var sheets = ""
    @State var tableCloth = ""
    @State var tablemat = ""
    var body: some View {
        VStack(alignment: .leading, spacing: 10){
            HStack{
                Text("home care")
                    .textCase(.uppercase)
                    .font(.custom("SF Pro Bold", size: 16))
            }
            VStack{
                Group{
                    VStack(alignment: .leading){
                        HStack(spacing: 183){
                            VStack(alignment: .leading){
                                Text("Cushion")
                                Text("$29.99+")
                            }
                            HStack{
                                Button(action: {
                                    // some logical operations
                                }, label: {
                                    Image("ic-minus")
                                })
                                TextField("", text: $cushion)
                                    .keyboardType(.numberPad)
                                    .padding()
                                    .frame(width: 25, height: 25)
                                    .background(Color.white)
                                    .cornerRadius(5)
                                    .shadow(color: .gray.opacity(0.8), radius: 3,x: 3,y: 2)
                                    .onReceive(Just(cushion)) { newValue in
                                        let filtered = newValue.filter { "0123456789".contains($0) }
                                        if filtered != newValue {
                                            self.cushion = filtered
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
                        HStack(spacing: 183){
                            VStack(alignment: .leading){
                                Text("Rug")
                                Text("$45.99+")
                            }
                            HStack{
                                Button(action: {
                                    // some logical operations
                                }, label: {
                                    Image("ic-minus")
                                })
                                TextField("", text: $rug)
                                    .keyboardType(.numberPad)
                                    .padding()
                                    .frame(width: 25, height: 25)
                                    .background(Color.white)
                                    .cornerRadius(5)
                                    .shadow(color: .gray.opacity(0.8), radius: 3,x: 3,y: 2)
                                    .onReceive(Just(rug)) { newValue in
                                        let filtered = newValue.filter { "0123456789".contains($0) }
                                        if filtered != newValue {
                                            self.rug = filtered
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
                        HStack(spacing: 140){
                            VStack(alignment: .leading){
                                Text("Duvet/Comforter")
                                Text("$39.99")
                            }
                            HStack{
                                Button(action: {
                                    // some logical operations
                                }, label: {
                                    Image("ic-minus")
                                })
                                TextField("", text: $duvet)
                                    .keyboardType(.numberPad)
                                    .padding()
                                    .frame(width: 25, height: 25)
                                    .background(Color.white)
                                    .cornerRadius(5)
                                    .shadow(color: .gray.opacity(0.8), radius: 3,x: 3,y: 2)
                                    .onReceive(Just(duvet)) { newValue in
                                        let filtered = newValue.filter { "0123456789".contains($0) }
                                        if filtered != newValue {
                                            self.duvet = filtered
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
                        HStack(spacing: 170){
                            VStack(alignment: .leading){
                                Text("Down Duvet")
                                Text("$49.99")
                            }
                            HStack{
                                Button(action: {
                                    // some logical operations
                                }, label: {
                                    Image("ic-minus")
                                })
                                TextField("", text: $downDuvet)
                                    .keyboardType(.numberPad)
                                    .padding()
                                    .frame(width: 25, height: 25)
                                    .background(Color.white)
                                    .cornerRadius(5)
                                    .shadow(color: .gray.opacity(0.8), radius: 3,x: 3,y: 2)
                                    .onReceive(Just(downDuvet)) { newValue in
                                        let filtered = newValue.filter { "0123456789".contains($0) }
                                        if filtered != newValue {
                                            self.downDuvet = filtered
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
                        HStack(spacing: 170){
                            VStack(alignment: .leading){
                                Text("Duvet Cover")
                                Text("$26.99")
                            }
                            HStack{
                                Button(action: {
                                    // some logical operations
                                }, label: {
                                    Image("ic-minus")
                                })
                                TextField("", text: $downCover)
                                    .keyboardType(.numberPad)
                                    .padding()
                                    .frame(width: 25, height: 25)
                                    .background(Color.white)
                                    .cornerRadius(5)
                                    .shadow(color: .gray.opacity(0.8), radius: 3,x: 3,y: 2)
                                    .onReceive(Just(downCover)) { newValue in
                                        let filtered = newValue.filter { "0123456789".contains($0) }
                                        if filtered != newValue {
                                            self.downCover = filtered
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
                                Text("Pillow")
                                Text("$19.99")
                            }
                            HStack{
                                Button(action: {
                                    // some logical operations
                                }, label: {
                                    Image("ic-minus")
                                })
                                TextField("", text: $pillow)
                                    .keyboardType(.numberPad)
                                    .padding()
                                    .frame(width: 25, height: 25)
                                    .background(Color.white)
                                    .cornerRadius(5)
                                    .shadow(color: .gray.opacity(0.8), radius: 3,x: 3,y: 2)
                                    .onReceive(Just(pillow)) { newValue in
                                        let filtered = newValue.filter { "0123456789".contains($0) }
                                        if filtered != newValue {
                                            self.pillow = filtered
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
                        HStack(spacing: 155){
                            VStack(alignment: .leading){
                                Text("Pillow Case Set")
                                Text("$11.99")
                            }
                            HStack{
                                Button(action: {
                                    // some logical operations
                                }, label: {
                                    Image("ic-minus")
                                })
                                TextField("", text: $caseSet)
                                    .keyboardType(.numberPad)
                                    .padding()
                                    .frame(width: 25, height: 25)
                                    .background(Color.white)
                                    .cornerRadius(5)
                                    .shadow(color: .gray.opacity(0.8), radius: 3,x: 3,y: 2)
                                    .onReceive(Just(caseSet)) { newValue in
                                        let filtered = newValue.filter { "0123456789".contains($0) }
                                        if filtered != newValue {
                                            self.caseSet = filtered
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
                        HStack(spacing: 205){
                            VStack(alignment: .leading){
                                Text("Sheets")
                                Text("$15.99")
                            }
                            HStack{
                                Button(action: {
                                    // some logical operations
                                }, label: {
                                    Image("ic-minus")
                                })
                                TextField("", text: $sheets)
                                    .keyboardType(.numberPad)
                                    .padding()
                                    .frame(width: 25, height: 25)
                                    .background(Color.white)
                                    .cornerRadius(5)
                                    .shadow(color: .gray.opacity(0.8), radius: 3,x: 3,y: 2)
                                    .onReceive(Just(sheets)) { newValue in
                                        let filtered = newValue.filter { "0123456789".contains($0) }
                                        if filtered != newValue {
                                            self.sheets = filtered
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
                        HStack(spacing: 183){
                            VStack(alignment: .leading){
                                Text("Table Cloth")
                                Text("$26.99")
                            }
                            HStack{
                                Button(action: {
                                    // some logical operations
                                }, label: {
                                    Image("ic-minus")
                                })
                                TextField("", text: $tableCloth)
                                    .keyboardType(.numberPad)
                                    .padding()
                                    .frame(width: 25, height: 25)
                                    .background(Color.white)
                                    .cornerRadius(5)
                                    .shadow(color: .gray.opacity(0.8), radius: 3,x: 3,y: 2)
                                    .onReceive(Just(tableCloth)) { newValue in
                                        let filtered = newValue.filter { "0123456789".contains($0) }
                                        if filtered != newValue {
                                            self.tableCloth = filtered
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
                        HStack(spacing: 197){
                            VStack(alignment: .leading){
                                Text("Tablemat")
                                Text("$4.49")
                            }
                            HStack{
                                Button(action: {
                                    // some logical operations
                                }, label: {
                                    Image("ic-minus")
                                })
                                TextField("", text: $tablemat)
                                    .keyboardType(.numberPad)
                                    .padding()
                                    .frame(width: 25, height: 25)
                                    .background(Color.white)
                                    .cornerRadius(5)
                                    .shadow(color: .gray.opacity(0.8), radius: 3,x: 3,y: 2)
                                    .onReceive(Just(tablemat)) { newValue in
                                        let filtered = newValue.filter { "0123456789".contains($0) }
                                        if filtered != newValue {
                                            self.tablemat = filtered
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
        .frame(width: 342, height: 600)
        .cornerRadius(30)
        .background(
            RoundedRectangle(cornerRadius: 30)
                .fill(Color.white)
                .shadow(color: .gray.opacity(0.5), radius: 3,x: 3,y: 3)
        )
        .padding(20)
    }
}

struct HomeCareTab_Previews: PreviewProvider {
    static var previews: some View {
        HomeCareTab()
    }
}
