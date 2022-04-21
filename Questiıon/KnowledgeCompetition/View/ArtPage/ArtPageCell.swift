//
//  ArtPageCell.swift
//  KnowledgeCompetition
//
//  Created by Murat Çiçek on 20.04.2022.
//

import SwiftUI

struct ArtPageCell: View {
    var question : Results
    @State var isDisabled = false
    
    @Binding var index : Int
    init (question: Results,index : Binding<Int>){
       
        self.question = question
        self._index = index
    }
    
    var body: some View {
        VStack{
            Spacer()
            HStack {
                Text(question.question ?? "").font(Font.title)
                    .padding()
                    .multilineTextAlignment(.center)        
            }
            Spacer()
            CustomButton(index: $index, isDisabled: $isDisabled, options: question.incorrectAnswers?[0] ?? "",answer: question.correctAnswer ?? "")
            CustomButton(index: $index,isDisabled: $isDisabled, options: question.incorrectAnswers?[1] ?? "",answer: question.correctAnswer ?? "")
            CustomButton(index: $index,isDisabled: $isDisabled, options: question.incorrectAnswers?[2] ?? "",answer: question.correctAnswer ?? "")
            CustomButton(index: $index, isDisabled: $isDisabled,options: question.correctAnswer ?? "", answer: question.correctAnswer ?? "")
            Spacer()
           

        }
    }
}

