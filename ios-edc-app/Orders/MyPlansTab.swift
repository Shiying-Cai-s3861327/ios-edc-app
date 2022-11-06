//
//  MyPlanView.swift
//  ios-edc-app
//
//  Created by Shiying Cai on 2022/11/4.
//

import SwiftUI

// Variables in each plan
struct Plan: Identifiable, Hashable{
    var id = UUID()
    var frequency: String
    var pickUpTime: String
    var pickUpDay: String
    var deliveryTime: String
    var deliveryDay: String
}

struct MyPlansTab: View {
    // Sample Data
    @State var samplePlanList = [
        Plan(frequency: "Weekly", pickUpTime: "9 AM - 12 PM", pickUpDay: "Monday", deliveryTime: "9 AM - 12 PM", deliveryDay: "Wednesday"),
        Plan(frequency: "Bi-Weekly", pickUpTime: "9 AM - 12 PM", pickUpDay: "Monday", deliveryTime: "9 AM - 12 PM", deliveryDay: "Wednesday"),
        Plan(frequency: "Monthly", pickUpTime: "9 AM - 12 PM", pickUpDay: "Monday", deliveryTime: "9 AM - 12 PM", deliveryDay: "Wednesday")
    ]
    
    @State private var showEditPlanView = false;
    @State private var isCanceled = false
    @State var cancelAlert = false
    
    var body: some View {
        ZStack{
            ScrollView{
                VStack(spacing: 8){
                    ForEach(samplePlanList){ planList in
                        VStack{
                            HStack(spacing: 90){
                                Group{
                                    Text(planList.frequency)
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
                                            Text("Pickup Time: ")+Text(planList.pickUpTime)
                                            Text("Pickup Day: ")+Text(planList.pickUpDay)
                                        }
                                        VStack(alignment: .leading){
                                            Text("Delivery Time: ")+Text(planList.deliveryTime)
                                            Text("Delivery Day: ")+Text(planList.deliveryDay)
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
                                        Group{
                                            Button(action: {
                                                showEditPlanView = true
                                            }, label: {
                                                Text("Edit")
                                                    .font(.custom("SF Pro Display Semibold", size: 12))
                                                    .foregroundColor(.white)
                                            })
                                            
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
                                        }
                                        .frame(width: 65, height: 25)
                                        .background(Color.accentColor)
                                        .cornerRadius(30)
                                        .shadow(color: .gray.opacity(0.7), radius: 3,x: 0,y: 3)
                                        
                                        NavigationLink("", destination:  EditPlanView(), isActive: $showEditPlanView)
                                            .navigationBarTitleDisplayMode(.inline)
                                            .navigationTitle("")
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
                    CancelPlanPopup(isShowed: $cancelAlert, isCanceled: $isCanceled)
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
    func delete(at index: Int){
        samplePlanList.remove(at: index)
    }
}

struct MyPlansTab_Previews: PreviewProvider {
    struct MyPlansTabHolder: View {

    var body: some View {
        MyPlansTab()
        }
    }
    static var previews: some View {
        MyPlansTabHolder()
    }
}
