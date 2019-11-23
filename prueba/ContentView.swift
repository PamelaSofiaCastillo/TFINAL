

import SwiftUI

struct ContentView: View {
    
    var body: some View {
       NavigationView{
                TabView{
                    SportEventListView().tabItem{
                        Text("Eventos por Deporte")
                        Image("ic_home")
                    }
        //            FavoriteView().tabItem{
        //                Text("Favorites")
        //                Image("ic_favorite")
        //            }
                    
                }
            }
    }
    
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
