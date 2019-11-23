import Foundation

let urlString = "http://yourwayapi.azurewebsites.net/api/sportEvents"

let urlSportEvents = urlString + "/sportEvents"


let url = URL(string: urlString)!

let session = URLSession.shared
