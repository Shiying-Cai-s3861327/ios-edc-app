//
//  MediumCheckBoxView.swift
//  ios-edc-app
//  Implementing the medium size checkbox component
//  Created by Shiying Cai on 2022/10/24.
//

import SwiftUI

struct MediumCheckBoxView: View {
    @Binding var checked: Bool
    var body: some View {
        Image(systemName: checked ? "checkmark.square.fill" : "square")
            .resizable()
            .frame(width:19, height: 19)
            .cornerRadius(5)
            .foregroundColor(checked ? Color(UIColor.systemBlue) : Color.secondary)
            .onTapGesture {
                self.checked.toggle()
            }
    }
}

struct MediumCheckBoxView_Previews: PreviewProvider {
    struct MediumCheckBoxViewHolder: View {
    @State var checked = false

    var body: some View {
        MediumCheckBoxView(checked: $checked)
        }
    }
    static var previews: some View {
        MediumCheckBoxViewHolder()
    }
}
