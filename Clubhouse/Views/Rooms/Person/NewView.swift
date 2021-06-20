//
//  NewView.swift
//  Clubhouse
//
//  Created by Sergio Sepulveda on 2021-06-19.
//

import SwiftUI

struct NewView: View {
    var body: some View {
        Text("🎉")
            .modifier(StatusViewModifier())
    }
}

struct NewView_Previews: PreviewProvider {
    static var previews: some View {
        NewView()

    }
}
