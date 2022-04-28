//
//  NoteList.swift
//  NoteApp
//
//  Created by Noiri, Takafumi | Taka | ELPD on 2022/04/27.
//

import SwiftUI

struct NoteList: View {
    var noteDataModel = NoteDataModel()
    
    @State var noteModelSample = NoteDataModel().noteDataModel[0]
    
    var body: some View {
        NavigationView {
            VStack() {
                
                HStack {
                    Text("Note App Sample")
                        .fontWeight(.bold)
                        .font(.largeTitle)
                    
                    Spacer()
                    
                }
                
                TextField("(I intended as a search bar)", text: .constant(""))
                    .textFieldStyle(.roundedBorder)
                    .padding()
                
//                AddNoteButton(dataModel: $noteModelSample)
                
                List {
                    NavigationLink(destination: UpdataView(noteModel: $noteModelSample)) {
                        NoteRow(noteModel: noteModelSample)
                    }
                }

            }
            .background(Color(UIColor.systemGray6))
            
        }
    }
}

struct NoteList_Previews: PreviewProvider {
    static var previews: some View {
        NoteList()
            
    }
}
