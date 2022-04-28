//
//  NoteDataModel.swift
//  NoteApp
//
//  Created by Noiri, Takafumi | Taka | ELPD on 2022/04/27.
//

import Foundation

final class NoteDataModel: ObservableObject {
    var noteDataModel: [NoteModel] = [NoteModel(id: 0, title: "title0", body: "bodySample0"),
                                      NoteModel(id: 1, title: "title1", body: "bodySample1"),
                                      NoteModel(id: 2, title: "title2", body: "bodySample2")]
    
}
