//
//  SportEventDetailVIew.swift
//  prueba
//
//  Created by gian franco on 11/22/19.
//  Copyright © 2019 pe.edu.com.upc. All rights reserved.
//

import SwiftUI


struct SportEventDetailView: View {
    @ObservedObject var sportEventVM: SportEventDetailViewModel
    
    var body: some View {
        
        VStack {
        if (sportEventVM.dataIsValid)
             {
                Text(sportEventVM.data!.title).bold()
                    Text(sportEventVM.data!.description!)
                   Text(sportEventVM.data!.place!.name!)
                Spacer()
                List{
                    ForEach(sportEventVM.data!.sportEventByUsers!) {sportEventByUser in
                        SportEventUserRowView(sportEventByUser: sportEventByUser)
                    }
                }
                
        }else{
            Text("Load information")
            }
                
            
           
        }
    }
    
    init(withURL id: String) {
        sportEventVM = SportEventDetailViewModel(urlStr: id)
    }
    
    
}
