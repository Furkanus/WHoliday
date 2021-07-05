//
//  CustomTextField.swift
//  WHoliday
//
//  Created by Furkan Hanci on 7/5/21.
//

import SwiftUI

struct OvalTextField : TextFieldStyle {
    func _body(configuration : TextField<Self._Label>) -> some View {
        configuration
            .padding(10)
            .background(Color.textField)
            .cornerRadius(15)
            .shadow(color: .gray, radius: 15)
    }
}
