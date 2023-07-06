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
    
    static func getEducationData() -> [Entry] {
        [
            Entry(title: .text("Linguistics & International communication:"), description: .text("Interpreter of English")),
            Entry(title: .text("Economy & Business management:"), description: .text("Finance manager")),
            Entry(title: .text("Flight crew training:"), description: .text("Radio Operator"))
        ]
    }
    
    static func getSwiftSelfLearning() -> [Entry] {
        [
            Entry(
                title:
                        .period(
                            startMonth: "April",
                            startYear: 2022,
                            endMonth: "May",
                            endYear: 2022
                        ),
                description:
                        .text(
                            "Swift Playgrounds, iPad app"
                        )),
            Entry(
                title:
                        .period(
                            startMonth: "May",
                            startYear: 2022,
                            endMonth: "June",
                            endYear: 2022),
                description:
                        .text(
                            "\"Swift for complete beginners\" by Paul Hudson, free course"
                        )),
            Entry(
                title:
                    .period(startMonth: "July", startYear: 2022, endMonth: "August", endYear: 2022),
                  description:
                    .text(
                        "\"SwiftUI basics\" by Ian Solomein, free course, unfinished"
                    )),
            Entry(
                title:
                    .period(
                        startMonth: "September",
                        startYear: 2022,
                        endMonth: "February",
                        endYear: 2023),
                  description:
                    .text(
                        "\"2019 Summer Swift course\" by Viacheslav Bilyi, free videos"
                    ))
        ]
    }
}

enum InfoType {
    case text(String)
    case image(String)
    case number(Int)
    case period(
        startMonth: String,
        startYear: Int,
        endMonth: String,
        endYear: Int
    )

    var entry: String {
        switch self {
        case .text(let text):
            return text
        case .image(let image):
            return image
        case .number(let number):
            return String(number)
        case let .period(startMonth, startYear, endMonth, endYear):
            return "\(startMonth), \(startYear) - \(endMonth), \(endYear):"
        }
    }
}

