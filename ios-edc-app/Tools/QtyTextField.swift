//
//  QtyTextField.swift
//  ios-edc-app
//  Implementing the regular TextField component
//  Created by Shiying Cai on 2022/10/24.
//

import SwiftUI
import Combine

struct QtyTextField: View {
    @Binding var qty: String
    
    var body: some View {
        TextField("", text: $qty)
            .keyboardType(.numberPad)
            .padding()
            .frame(width: 37, height: 23)
            .multilineTextAlignment(.center)
            .font(.custom("SF Pro Display Medium", size: 16))
            .background(Color.white)
            .overlay(
                RoundedRectangle(cornerRadius: 15)
                    .stroke(Color("StrokeColor"), lineWidth: 2)
            )
        // Restrictions on numeric input only
            .onReceive(Just(qty)) { newValue in
                let filtered = newValue.filter { "0123456789".contains($0) }
                if filtered != newValue {
                    self.qty = filtered
                }
            }
    }
}

struct QtyTextField_Previews: PreviewProvider {
    struct QtyTextFieldHolder: View {
    @State var qty = "2"

    var body: some View {
        QtyTextField(qty: $qty)
        }
    }
    static var previews: some View {
        QtyTextFieldHolder()
    }
}
