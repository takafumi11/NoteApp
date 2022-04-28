//
//  NoteList.swift
//  NoteApp
//
//  Created by Noiri, Takafumi | Taka | ELPD on 2022/04/27.
//

import SwiftUI

struct NoteList: View {
    var noteDataModel = NoteDataModel()
    
    @State var noteModelSample = NoteDataModel().noteDataModel
    
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
                
                AddNoteButton(dataModel: $noteModelSample[0])
                
                List(0..<NoteDataModel().noteDataModel.count) { num in
                    NavigationLink(destination: UpdataView(noteModel: $noteModelSample[num])) {
                        NoteRow(noteModel: noteModelSample[num])
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
