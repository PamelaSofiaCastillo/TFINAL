

import SwiftUI

struct SportEventRowView: View {
    
     var sportEvent: SportEvent?
    
    
    
    var body: some View {
     
        HStack {

            VStack(alignment: .leading){
                Text(sportEvent!.title).bold()
                Spacer()
                HStack {
                    Text(sportEvent!.description!)
                    Text(sportEvent!.place!.name!)
                }
            }
            Spacer()
            Button(action:{
              // TODO: 	Poner aca el link a la vista de Detalle
            }){
                Image(systemName: "arrow")
            }
        }.buttonStyle(BorderlessButtonStyle())
        
        
    }
}

struct SportEventRowView_Previews: PreviewProvider {
    static var previews: some View {
        SportEventRowView()
    }
}
