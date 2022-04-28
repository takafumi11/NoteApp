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
                    .lineLimit(1)
                    
                Text(noteModel.body)
                    .lineLimit(1)
                
            }
            Spacer()
            
        }
        
    }
}

struct NoteRow_Previews: PreviewProvider {
    static var previews: some View {
        
        NoteRow(noteModel: NoteDataModel().noteDataModel[1])
        .previewLayout(.fixed(width: 300, height: 70))
        
    }
}
