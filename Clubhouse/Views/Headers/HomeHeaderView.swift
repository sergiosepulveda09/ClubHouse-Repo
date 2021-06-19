//
//  HomeHeaderView.swift
//  Clubhouse
//
//  Created by Sergio Sepulveda on 2021-06-18.
//

import SwiftUI

struct HomeHeaderView: View {
    var body: some View {
        HStack(spacing: 20) {
            Image.search
            Spacer()
            Image.invite
            Image.calendar
            Image.notificationBell
            Image.profile_pic
                .resizable()
                .frame(width: 32, height: 32)
                .cornerRadius(11)
        }
        .font(Font.Nunito.bold(size: 24))
        .frame(maxWidth: .infinity, maxHeight: 50)
        .padding(.horizontal, 15)
    }
}

struct HomeHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HomeHeaderView()
        HomeHeaderView()
            .previewLayout(.sizeThatFits)
    }
}
