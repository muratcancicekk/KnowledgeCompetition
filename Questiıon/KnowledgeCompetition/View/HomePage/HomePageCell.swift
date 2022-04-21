//
//  HomePageCell.swift
//  KnowledgeCompetition
//
//  Created by Murat Çiçek on 20.04.2022.
//

import SwiftUI

struct HomePageCell: View {
   let title : String
    let bgColor: Color
 

   
    var body: some View {
        VStack{
            
        Text(title).foregroundColor(Color.white).font(Font.title).fontWeight(Font.Weight.bold).padding(50)
      
        }.background(bgColor).cornerRadius(8)
    }
}

