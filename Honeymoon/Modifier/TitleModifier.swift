//
//  TitleModifier.swift
//  Honeymoon
//
//  Created by PDWS on 10/10/22.
//

import SwiftUI

struct TitleModifier: ViewModifier{
    func body(content: Content) -> some View {
        content
        .font(.largeTitle)
        .foregroundColor(Color.pink)
    }
}
