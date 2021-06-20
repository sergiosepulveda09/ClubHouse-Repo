//
//  BottomRoomView.swift
//  Clubhouse
//
//  Created by Sergio Sepulveda on 2021-06-19.
//

import SwiftUI

struct BottomRoomView: View {
    
    var body: some View {
        HStack(spacing: 22) {
            Text("✌🏼 Leave quietly")
                .font(Font.Nunito.bold(size: 16))
                .foregroundColor(Color.customRed)
                .padding(.horizontal, 13)
                .padding(.vertical, 8)
                .background(Color.customLightGray)
                .cornerRadius(18)
            
            Spacer()
            
            Image.plus
                .font(Font.Nunito.semiBold(size: 24))
                .padding(8)
                .background(Color.customLightGray)
                .clipShape(Circle())
            
            Image.handRaised
                .font(Font.Nunito.semiBold(size: 24))
                .padding(4)
                .background(Color.customLightGray)
                .clipShape(Circle())
        }
        .padding(.horizontal, 15)
        .padding(.top, 10)
        .frame(maxWidth: .infinity, maxHeight: 100, alignment: .top)
        .background(Color.cardBackground)
        
    }
}

struct BottomRoomView_Previews: PreviewProvider {
    static var previews: some View {
        BottomRoomView()
    }
}
