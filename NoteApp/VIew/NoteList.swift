//
//  NoteList.swift
//  NoteApp
//
//  Created by Noiri, Takafumi | Taka | ELPD on 2022/04/27.
//

import SwiftUI

struct NoteList: View {
    @State var dataModel: [NoteModel] = []
    @State var newNote = NoteModel(id: 0, title: "", body: "")
    
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
                
                NavigationLink(destination: UpdataView(noteModel: $newNote)) {
                    Text("Create New Note")
                    
                }
                .onAppear {
                    if newNote.title != "" {
                        addNewNote()
                    }
                    
                }
                
                List(0..<$dataModel.count, id: \.self) { num in
                    NavigationLink(destination: UpdataView(noteModel: $dataModel[num])) {
                        NoteRow(noteModel: dataModel[num])
                    }
                }

            }
            .background(Color(UIColor.systemGray6))
            
        }
    }
    
    private func addNewNote() {
        dataModel.append(newNote)
        newNote.title = ""
    }
}

struct NoteList_Previews: PreviewProvider {
    static var previews: some View {
        NoteList()
            
    }
}
