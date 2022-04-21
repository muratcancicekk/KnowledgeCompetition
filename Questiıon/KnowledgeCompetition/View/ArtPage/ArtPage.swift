//
//  ArtPage.swift
//  KnowledgeCompetition
//
//  Created by Murat Çiçek on 20.04.2022.
//

import SwiftUI

struct ArtPage: View {
    let width = UIScreen.main.bounds.width
    let heigth = UIScreen.main.bounds.height
    @State var index = 0
    @StateObject var viewModel = HomePageScreenViewModel()
    var body: some View {
        VStack {
            VStack {
                if viewModel.model.count > 0 {
                    
                    ArtPageCell(question: viewModel.model[index], index: $index)
                        .frame( height: 400)
            }
            }.frame(width:width , height: heigth ).background(Color.blue.opacity(0.4)).onAppear{
                viewModel.getDatas(url: Constants.url.artUrl)
                print(viewModel.model.count)
            }
        }
    }
}

struct ArtPage_Previews: PreviewProvider {
    static var previews: some View {
        ArtPage()
    }
}
