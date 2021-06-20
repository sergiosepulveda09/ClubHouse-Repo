//
//  MuteView.swift
//  Clubhouse
//
//  Created by Sergio Sepulveda on 2021-06-19.
//

import SwiftUI

struct MuteView: View {
    var body: some View {
        Image.mute
            .modifier(StatusViewModifier())
    }
}

struct MuteView_Previews: PreviewProvider {
    static var previews: some View {
        MuteView()
    }
}
