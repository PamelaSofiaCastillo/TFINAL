

import SwiftUI

struct SportEventRowView: View {
    
    var sportEvent: SportEvent?
    
    var body: some View {
     
        HStack {
            VStack{
                Text(sportEvent!.title).bold()
                Spacer()
                HStack {
                    Text(sportEvent!.description!)
                    Text(sportEvent!.place!.name!)
                }
            }
        }.buttonStyle(BorderlessButtonStyle())
        
        
    }
}

struct SportEventRowView_Previews: PreviewProvider {
    static var previews: some View {
        SportEventRowView()
    }
}
