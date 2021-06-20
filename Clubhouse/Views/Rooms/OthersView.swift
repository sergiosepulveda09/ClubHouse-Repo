//
//  OthersView.swift
//  Clubhouse
//
//  Created by Sergio Sepulveda on 2021-06-19.
//

import SwiftUI

struct OthersView: View {
    
    let title: String
    let people: [Person]
    private let othersColumn = [
        GridItem(.fixed(65), spacing: 24),
        GridItem(.fixed(65), spacing: 24),
        GridItem(.fixed(65), spacing: 24),
        GridItem(.fixed(65), spacing: 24)
    ]
    
    var body: some View {
        
        VStack(alignment: .leading) {
            
            Text(title)
                .font(Font.Nunito.bold(size: 14))
                .foregroundColor(Color.customGrey)
            
            LazyVGrid(columns: othersColumn, alignment: .leading, spacing: 10) {
                ForEach(people) { person in
                    OtherPersonView(person: person)
                }
            }
        }
        .padding(.top, 20)
        .padding(.horizontal, 25)
    }
}

struct OthersView_Previews: PreviewProvider {
    static var previews: some View {
        OthersView(title: "Other people", people: FeedRoom.dummyData[0].othersInRoom)
    }
}
