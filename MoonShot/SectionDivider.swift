//
//  SectionDivider.swift
//  MoonShot
//
//  Created by Samuel Hernandez Vicera on 3/26/24.
//

import SwiftUI

struct SectionDivider: View {
    var body: some View {
        Rectangle()
            .frame(height: 2)
            .foregroundStyle(.lightBackground)
        .padding(.vertical)

    }
}

#Preview {
    SectionDivider()
}
