//
//  PersonalInfo.swift
//  Lesson 2.06_AboutMeApp
//
//  Created by Юрий Куринной on 04.07.2023.

// MARK: Entry model
struct Entry {
    let title: InfoType
    let description: InfoType
    
    // MARK: Personal info method
    static func getPersonalData() -> [Entry] {
        personalInfo
    }
    
    // MARK: Education info method
    static func getEducationData() -> [Entry] {
        educationInfo
    }

    static func getSwiftSelfLearning() -> [Entry] {
        swiftLearningInfo
    }
    
    // MARK: Career info method
    static func getCareerData() -> [Entry] {
        careerInfo
    }
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
        endYear: Int
    )
    case years(
        startYear: Int,
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
        case let .years(startYear, endYear):
            return "\(startYear) - \(endYear)"
        }
    }
}

