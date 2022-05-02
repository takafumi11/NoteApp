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
