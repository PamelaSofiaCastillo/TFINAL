import Foundation

struct Place: Decodable, Identifiable {
    
    let id: Int?
    let name: String?
   

    enum CodingKeys: String, CodingKey {
        case id = "id"
        case name = "name"
       
    }
    
}

struct SportEvent: Decodable, Identifiable {

    let place:Place?
    let id:Int
    let title: String
    let description: String?
    
    enum CodingKeys: String, CodingKey {
           case id = "id"
           case title = "title"
           case description = "description"
           case place = "place"
        
       }

}


//struct SportEventResponse: Decodable {
//    let places: [Place]
//
////    enum CodingKeys: String, CodingKey {
////        case places = "sportEvents"
////    }
//}

