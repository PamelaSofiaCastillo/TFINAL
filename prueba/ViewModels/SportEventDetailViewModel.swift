import SwiftUI

class SportEventDetailViewModel: ObservableObject {
    @Published var dataIsValid = false
    var data:SportEvent?
    init(urlStr:String) {

        guard let url = URL(string: urlString + "/" +  urlStr) else { return }
        let task = URLSession.shared.dataTask(with: url) { data, response, error in
            guard let data = data else { return }
            DispatchQueue.main.async {
                self.dataIsValid = true
                let sportEventReponse = try! JSONDecoder().decode(SportEvent.self, from: data)
                               
                self.data = sportEventReponse
                           
            }
        }
        task.resume()
    }
}
