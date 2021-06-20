//
//  PersonImageView.swift
//  Clubhouse
//
//  Created by Sergio Sepulveda on 2021-06-19.
//

import SwiftUI

struct PersonImageView: View {
    
    let image: String?
    
    var body: some View {
        if let image = image {
            Image(image)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .clipShape(ContainerRelativeShape())
        } else {
            Image.person
                .resizable()
                .aspectRatio(contentMode: .fill)
                .background(Color.customLightGray)
                .clipShape(ContainerRelativeShape())
                
        }
    }
}
struct StatusViewModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .padding(5)
            .background(Color.white)
            .clipShape(Circle())
            .shadow(color: Color.cardShadowTint, radius: 1, y: 1)
    }
}

struct PersonImageView_Previews: PreviewProvider {
    static var previews: some View {
        PersonImageView(image: nil)
    }
}
