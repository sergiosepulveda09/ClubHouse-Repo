//
//  HostsView.swift
//  Clubhouse
//
//  Created by Sergio Sepulveda on 2021-06-19.
//

import SwiftUI

struct HostsView: View {
    
    let people: [Person]
    private let peopleColumns = [
        GridItem(.fixed(85), spacing: 25),
        GridItem(.fixed(85), spacing: 25),
        GridItem(.fixed(85), spacing: 25)
    ]
    var body: some View {
        LazyVGrid(columns: peopleColumns, alignment: .leading, spacing: 10) {
            ForEach(people) { person in
                PersonView(person: person)
            }
        }
    }
}

struct HostsView_Previews: PreviewProvider {
    static var previews: some View {
        HostsView(people: FeedRoom.dummyData[0].hosts)
    }
}
