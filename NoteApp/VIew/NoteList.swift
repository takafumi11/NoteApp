//
//  NoteList.swift
//  NoteApp
//
//  Created by Noiri, Takafumi | Taka | ELPD on 2022/04/27.
//

import SwiftUI

struct NoteList: View {
    var noteDataModel: NoteDataModel
    
    var body: some View {
        List {
            ForEach(noteDataModel.noteDataModel) { dataModel in
                NoteRow(noteModel: dataModel)
            }
            
        }
    }
}

struct NoteList_Previews: PreviewProvider {
    static var previews: some View {
        NoteList(noteDataModel: NoteDataModel())
    }
}
