

import SwiftUI

struct ContentView: View {
   
    var body: some View {
        ZStack(alignment: .bottom) {
            VStack {
                HomeHeaderView()
                ScrollView {
                    LazyVStack(spacing: 16) {
                        
                        ForEach(FeedItem.dummyData) { feedItem in
                            
                            switch feedItem.item {
                            
                            case is UpcomingFeedItem:
                                let upcomingFeedItem = feedItem.item as! UpcomingFeedItem
                                UpcomingRoomsView(upcomingRooms: upcomingFeedItem.upcoming)
                            
                            case is RoomFeedItem:
                                let roomFeedItem = feedItem.item as! RoomFeedItem
                                RoomView(room: roomFeedItem.room)
                            
                            default:
                                EmptyView()
                            
                            }
                        }
                    }
                    .padding(.top, 20)
                    .padding(.bottom, 150)
                }
            }
            .padding(.top, 75)
            BottomHomeView()
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.background)
        .ignoresSafeArea()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
           
    }
}
