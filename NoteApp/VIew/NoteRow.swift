//
//  NoteRow.swift
//  NoteApp
//
//  Created by Noiri, Takafumi | Taka | ELPD on 2022/04/26.
//

import SwiftUI

struct NoteRow: View {
    var noteModel: NoteModel
    
    var body: some View {
        HStack{
            VStack(alignment: .leading) {
                Text(noteModel.title)
                    .fontWeight(.bold)
                    
                Text(noteModel.body)
                
            }
            Spacer()
            
        }
        
    }
}

struct NoteRow_Previews: PreviewProvider {
    static var previews: some View {
        let noteModel = NoteModel(id: 0, title: "title", body: "body")
        
        NoteRow(noteModel: noteModel)
        .previewLayout(.fixed(width: 300, height: 70))
        
    }
}
