//
//  PersonalInfo.swift
//  Lesson 2.06_AboutMeApp
//
//  Created by Юрий Куринной on 04.07.2023.
//

struct User {
    let login: String
    let password: String
    let masterName: String
    let person: Person
    
    static func getUser () -> User {
        User(
            login: "Jane",
            password: "master",
            masterName: "Eugenia",
            person: Person.getPerson()
            )
    }
}
// MARK: Person model
struct Person {
    let name: String
    let photo: String
    let background: [[Entry]]
    
    static func getPerson () -> Person {
        
        let personalInfo = [
            Entry(
                title: .text("Age:"),
                description: .number(39)),
            Entry(
                title: .text("City:"),
                description: .text("Ulyanovsk")),
            Entry(
                title:
                        .text("Flow:"),
                description:
                        .number(36)),
            Entry(
                title:
                        .text("Learning pace:"),
                description:
                        .text("Slow-to-Average"))
        ]
        
        let educationInfo = [
            Entry(
                title:
                        .text("Linguistics & International communication: \nInterpreter of English"),
                description:
                        .image("ULSU")),
            Entry(
                title:
                        .text("Economy & Business management: \nFinance manager"),
                description:
                        .image("ULSU")),
            Entry(
                title:
                        .text("Flight crew training: \n\nAN-124 Radio Operator"),
                description:
                        .image("VDA"))
        ]
        
        let swiftLearningInfo = [
            Entry(
                title:
                        .period(
                            startMonth: "April",
                            startYear: 2022,
                            endMonth: "May",
                            endYear: 2022),
                description:
                        .text(
                            "Swift Playgrounds, iPad app")),
            Entry(
                title:
                        .period(
                            startMonth: "May",
                            startYear: 2022,
                            endMonth: "June",
                            endYear: 2022),
                description:
                        .text(
                            "\"Swift for complete beginners\" by Paul Hudson, free Youtube course")),
            Entry(
                title:
                        .period(
                            startMonth: "July",
                            startYear: 2022,
                            endMonth: "August",
                            endYear: 2022),
                description:
                        .text(
                            "\"SwiftUI basics\" by Ian Solomein, free Youtube course, unfinished")),
            Entry(
                title:
                        .period(
                            startMonth: "September",
                            startYear: 2022,
                            endMonth: "February",
                            endYear: 2023),
                description:
                        .text(
                            "\"2019 Summer Swift course\" by Viacheslav Bilyi, free Youtube videos"))
        ]
        
        let careerInfo = [
            Entry(
                title:
                        .years(
                            startYear: 2003,
                            endYear: 2009),
                description:
                        .image("Interpreter")),
            Entry(
                title:
                        .years(
                            startYear: 2009,
                            endYear: 2012),
                description:
                        .image("Accountant")),
            Entry(
                title:
                        .years(
                            startYear: 2013,
                            endYear: 2023),
                description:
                        .image("RadioOps"))
        ]
        
        let person = Person(
            name: "Yuri Kurinnoi",
            photo: "Personal",
            background: [personalInfo, educationInfo, swiftLearningInfo, careerInfo])
        
        return person
    }
}

// MARK: Entry model
struct Entry {
    let title: InfoType
    let description: InfoType
}

// MARK: InfoType model
enum InfoType {
    case text(String)
    case image(String)
    case number(Int)
    case period(
        startMonth: String,
        startYear: Int,
        endMonth: String,
        endYear: Int)
    case years(
        startYear: Int,
        endYear: Int)
    
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
        case let .years(startYear, endYear):
            return "\(startYear) - \(endYear)"
        }
    }
}

