//
//  UpdataView.swift
//  NoteApp
//
//  Created by Noiri, Takafumi | Taka | ELPD on 2022/04/27.
//

import SwiftUI

struct UpdataView: View {
    @Binding var noteModel: NoteModel

    var body: some View {
        VStack {
            TextEditor(text: $noteModel.title)

        }
        
    }
}
