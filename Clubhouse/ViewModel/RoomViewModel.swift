
import Foundation

class RoomViewModel: ObservableObject {

    private(set) var activeRoom: FeedRoom = FeedRoom.dummyData[0]


    func setActive(_ room: FeedRoom) {
        self.activeRoom = room
    }
}
