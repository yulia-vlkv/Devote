//
//  BlankView.swift
//  Devote
//
//  Created by Iuliia Volkova on 11.07.2022.
//

import SwiftUI

struct BlankView: View {
    // MARK: - Property
    
    var backgroundColor: Color
    var backgroundOpacity: Double
    
    // MARK: - Body
    var body: some View {
        VStack {
            Spacer()
        }
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .center)
        .background(backgroundColor)
        .opacity(backgroundOpacity)
        .blendMode(.overlay)
        .edgesIgnoringSafeArea(.all)
//        .background(.ultraThinMaterial)
    }
}

// MARK: - Preview

struct BlankView_Previews: PreviewProvider {
    static var previews: some View {
        BlankView(backgroundColor: .black, backgroundOpacity: 0.3)
            .background(BackgroundImageView())
            .background(backgroundGradient.ignoresSafeArea(.all))
    }
}
