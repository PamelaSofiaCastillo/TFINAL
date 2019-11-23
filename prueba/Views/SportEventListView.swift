//
//  SportEventListView.swift
//  prueba
//
//  Created by gian franco on 11/22/19.
//  Copyright © 2019 pe.edu.com.upc. All rights reserved.
//

import SwiftUI

struct SportEventListView: View {
    
    
    @ObservedObject var sportEventListVM = SportEventListViewModel()
       
       var body: some View {
           List{
               ForEach(self.sportEventListVM.sportEvents) {sportEvent in
                   SportEventRowView(sportEvent: sportEvent)
               }
           }
       }
}

struct SportEventListView_Previews: PreviewProvider {
    static var previews: some View {
        SportEventListView()
    }
}
