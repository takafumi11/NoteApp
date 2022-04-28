//
//  NoteModel.swift
//  NoteApp
//
//  Created by Noiri, Takafumi | Taka | ELPD on 2022/04/26.
//

import Foundation

struct NoteModel: Identifiable, Codable {
    var id: Int
    var title: String
    var body: String
}
