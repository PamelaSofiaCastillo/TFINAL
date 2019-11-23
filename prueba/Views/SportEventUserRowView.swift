//
//  SportEventUserRowView.swift
//  prueba
//
//  Created by gian franco on 11/23/19.
//  Copyright © 2019 pe.edu.com.upc. All rights reserved.
//

import SwiftUI

struct SportEventUserRowView: View {
    
     var sportEventByUser: SportEventByUser?
    
    var body: some View {
     
        HStack (alignment: .center) {
            Spacer()
            Text(sportEventByUser!.user!.name! + " " + sportEventByUser!.user!.lastName!)
            Spacer()
        }
    }
}

