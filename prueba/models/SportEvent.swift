import Foundation

struct Place: Decodable, Identifiable {
    
    let id: Int?
    let name: String?
   

    enum CodingKeys: String, CodingKey {
        case id = "id"
        case name = "name"
       
    }
    
}


struct SportEventByUser: Decodable, Identifiable {
    
    let id: Int
    let user: User?

    enum CodingKeys: String, CodingKey {
        case id = "id"
        case user = "user"
       
    }
    
}

struct User: Decodable, Identifiable {
    
    let id: Int
    let name: String?
    let lastName: String?
      

    enum CodingKeys: String, CodingKey {
        case id = "id"
        case name = "name"
        case lastName = "lastName"
    }
    
}


struct SportEvent: Decodable, Identifiable {

    let place:Place?
    let id:Int
    let title: String
    let description: String?
    let sportEventByUsers: [SportEventByUser]?
    
    enum CodingKeys: String, CodingKey {
           case id = "id"
           case title = "title"
           case description = "description"
           case place = "place"
           case sportEventByUsers = "sportEventByUsers"
        
       }

}


//struct SportEventResponse: Decodable {
//    let places: [Place]
//
////    enum CodingKeys: String, CodingKey {
////        case places = "sportEvents"
////    }
//}

