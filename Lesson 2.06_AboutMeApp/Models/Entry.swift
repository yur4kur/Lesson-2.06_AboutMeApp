//
//  PersonalInfo.swift
//  Lesson 2.06_AboutMeApp
//
//  Created by Юрий Куринной on 04.07.2023.

struct Entry {
    let title: InfoType
    let description: InfoType
    
    static func getPersonalData() -> [Entry] {
        [
            Entry(title: .text("Age:"), description: .number(39)),
            Entry(title: .text("City:"), description: .text("Ulyanovsk")),
            Entry(title: .text("Flow:"), description: .number(36)),
            Entry(title: .text("Learning pace:"), description: .text("Slow-to-Average"))
        ]
    }
}

enum InfoType {
    case text(String)
    case image(String)
    case number(Int)
    case date(month: String, year: Int)

    var entry: String {
        switch self {
        case .text(let text):
            return text
        case .image(let image):
            return image
        case .number(let number):
            return String(number)
        case let .date(month, year):
            return month + ", \(year)"
        }
    }
}

