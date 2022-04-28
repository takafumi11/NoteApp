//
//  AddNoteButton.swift
//  NoteApp
//
//  Created by Noiri, Takafumi | Taka | ELPD on 2022/04/28.
//

import SwiftUI

struct AddNoteButton: View {
    @Binding var dataModel: NoteModel
    @State var dummyText: String = "tap here"
    
    var body: some View {
        Button(action: {
            
            dataModel = NoteModel(id: 0, title: "replace title", body: "replace body")
            NoteDataModel().noteDataModel[0] = dataModel
            
//            NoteDataModel().noteDataModel.append(NoteModel(id: 0, title: "sss", body: ""))
            dummyText = NoteDataModel().noteDataModel.last!.title
//            dummyText = String(NoteDataModel().noteDataModel.count)
        }){
            Text(dummyText)
                .font(.largeTitle)
        }
    }
}

struct AddNoteButton_Previews: PreviewProvider {
    static var previews: some View {
        AddNoteButton(dataModel: .constant(NoteModel(id: 0, title: "replace title", body: "replace body")))
    }
}
