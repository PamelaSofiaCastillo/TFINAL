

import SwiftUI

struct ContentView: View {
    
    var body: some View {
       NavigationView{
                TabView{
                    SportEventListView().tabItem{
                        Text("Eventos por Deporte")
                        Image(systemName: "ic_home")
                    }.navigationBarTitle("").navigationBarHidden(false)
                }.navigationBarTitle("").navigationBarHidden(true)
        }
    }
    
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
