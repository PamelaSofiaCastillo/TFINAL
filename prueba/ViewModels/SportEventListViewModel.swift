//
//  SportEventListViewModel.swift
//  prueba
//
//  Created by gian franco on 11/22/19.
//  Copyright © 2019 pe.edu.com.upc. All rights reserved.
//

import SwiftUI

class SportEventListViewModel: ObservableObject {
    @Published var sportEvents = [SportEvent]()
    
    init(){
        
        session.dataTask(with: url) {
            data, response, error in
            
            DispatchQueue.main.async {
                let sportEventReponse = try! JSONDecoder().decode([SportEvent].self, from: data!)
                
                self.sportEvents = sportEventReponse
            }
        }.resume()
    }
}
