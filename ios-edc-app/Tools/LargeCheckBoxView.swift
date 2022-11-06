//
//  LargeCheckboxView.swift
//  ios-edc-app
//  Implementing the large size checkbox component
//  Created by Shiying Cai on 2022/10/20.
//

import SwiftUI

struct LargeCheckBoxView: View {
    @Binding var checked: Bool

    var body: some View {
        Image(systemName: checked ? "checkmark.square.fill" : "square")
            .resizable()
            .frame(width:26, height: 26)
            .cornerRadius(5)
            .foregroundColor(checked ? Color(UIColor.systemBlue) : Color.secondary)
            
            .onTapGesture {
                self.checked.toggle()
            }
    }
}

struct LargeCheckBoxView_Previews: PreviewProvider {
    struct LargeCheckBoxViewHolder: View {
    @State var checked = false

    var body: some View {
        LargeCheckBoxView(checked: $checked)
        }
    }
    static var previews: some View {
        LargeCheckBoxViewHolder()
    }
}
