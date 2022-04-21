//
//  ContentView.swift
//  KnowledgeCompetition
//
//  Created by Murat Çiçek on 20.04.2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            NavigationLink{
                ArtPage()
                
            }
        label:{
            HomePageCell(title: Constants.art,bgColor: Color.green)
        }
            NavigationLink{
                AnimalPage()
                
            }
        label:{
            HomePageCell(title: Constants.animal,bgColor: Color.blue)
        }
            
           
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
