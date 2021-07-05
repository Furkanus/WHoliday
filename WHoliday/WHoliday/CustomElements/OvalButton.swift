//
//  OvalButton.swift
//  WHoliday
//
//  Created by Furkan Hanci on 7/5/21.
//

import SwiftUI

struct OvalButton : ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration
            .label
            .padding()
            .background(Color.bg1)
            .clipShape(RoundedRectangle(cornerRadius: 20))
    }
}
