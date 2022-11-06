//
//  MyScheduleView.swift
//  ios-edc-app
//
//  Created by Shiying Cai on 2022/10/20.
//

import SwiftUI

struct MyScheduleView: View {
    @Binding var btnCurrentIsClick: Bool
    @Binding var btnPastIsClick: Bool
    @Binding var btnPlanIsClick: Bool
    
    @State private var showAddScheduleView = false
    
    var body: some View {
        ZStack{
            Color("BackgroundColor")
                .ignoresSafeArea()
            VStack{
                HStack{
                    Button(action: {
                        self.btnCurrentIsClick.toggle()
                        btnPastIsClick = false
                        btnPlanIsClick = false
                    }, label: {
                        Image(btnCurrentIsClick ? "btn-current-bg" : "btn-current-stroke")
                    })
                    Button(action: {
                        self.btnPastIsClick.toggle()
                        btnCurrentIsClick = false
                        btnPlanIsClick = false
                    }, label: {
                        Image(btnPastIsClick ? "btn-past-bg" : "btn-past-stroke")
                    })
                    Button(action: {
                        self.btnPlanIsClick.toggle()
                        btnCurrentIsClick = false
                        btnPastIsClick = false
                    }, label: {
                        Image(btnPlanIsClick ? "btn-myplan-bg" : "btn-myplan-stroke")
                    })
                }
                .padding()
                
                // Display different subview depending on the clicked button
                GeometryReader{ g in
                    ScrollView{
                        if self.btnCurrentIsClick{
                            CurrentOrderTab()
                                .frame(height: g.size.height, alignment: .center)
                                .padding(-10)
                        }else if self.btnPastIsClick{
                            PastOrdersTab()
                                .frame(height: g.size.height, alignment: .center)
                                .padding(-20)
                        }else{
                            MyPlansTab()
                                .frame(height: g.size.height, alignment: .center)
                                .padding(-10)
                            VStack {
                                Button(action:{showAddScheduleView = true}){
                                    Text("Add a Plan")
                                        .font(.btnLable)
                                        .foregroundColor(Color.white)
                                }

                                .frame(width: 336, height: 49)
                                .background(Color("LinkColor"))
                                .cornerRadius(60)
                                .shadow(color: .gray.opacity(0.7), radius: 8,x: 8,y: 8)
                                .padding()
                                NavigationLink("", destination:  AddScheduleView(), isActive: $showAddScheduleView)
                                    .navigationBarTitleDisplayMode(.inline)
                                    .navigationTitle("")
                            }
                        }
                    }
                }
                
            }
            
        }
        .toolbar{
            ToolbarItem(placement: .navigationBarLeading) {
                Text("My Orders")
                    .font(.naviLable)
                    .foregroundColor(Color("NaviTextColor"))
            }
        }
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct MyScheduleView_Previews: PreviewProvider {
    
    struct MyScheduleViewHolder: View {
        @State var btnCurrentIsClick = false
        @State var btnPastIsClick = false
        @State var btnPlanIsClick = true

    var body: some View {
        MyScheduleView(btnCurrentIsClick: $btnCurrentIsClick, btnPastIsClick: $btnPastIsClick, btnPlanIsClick: $btnPlanIsClick)
        }
    }
    static var previews: some View {
        MyScheduleViewHolder()
    }
}
