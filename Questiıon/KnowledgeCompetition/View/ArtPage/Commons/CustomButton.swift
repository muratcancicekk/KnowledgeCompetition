//
//  CustomButton.swift
//  KnowledgeCompetition
//
//  Created by Murat Çiçek on 20.04.2022.
//

import SwiftUI

struct CustomButton: View {
    @Binding var index : Int
    @Binding var isDisabled : Bool
    let answer : String
    @State var isTrue = false
    @State var isClicked : Bool = false
    let options : String
    init (index : Binding<Int>,isDisabled: Binding<Bool>, options: String,answer:String){
        self._index = index
        self._isDisabled = isDisabled
        self.options = options
        self.answer = answer
    }
    
    let width = UIScreen.main.bounds.width
    let heigth = UIScreen.main.bounds.height
    var body: some View {
        Button {
            self.isClicked.toggle()
            self.isDisabled.toggle()
            if answer == options{
                self.isTrue.toggle()
            }
            DispatchQueue.main.asyncAfter(deadline: .now()+2) {
                index += 1
                self.isDisabled.toggle()
                self.isTrue.toggle()
                self.isClicked.toggle()
                
            }
        }
    label: {
            RoundedRectangle(cornerRadius: 8).fill( qColor)
                .frame(width: width * 0.6, height: width*0.1)
                .overlay(
                    Text(options)
                        .fontWeight(Font.Weight.medium)
                        .font(Font.body)
                        .foregroundColor(Color.black))
        }.disabled(isDisabled)
    }
    var qColor : Color{
        if isClicked {
            if isTrue {
                return .orange
            }else{
                return.red
            }
        }
        return .white
        
    }
}

