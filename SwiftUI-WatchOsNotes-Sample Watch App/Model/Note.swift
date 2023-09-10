//
//  Note.swift
//  SwiftUI-WatchOsNotes-Sample Watch App
//
//  Created by ekayaint on 10.09.2023.
//

import Foundation

struct Note: Identifiable, Codable {
    let id: UUID
    let text: String
}
