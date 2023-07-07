//
//  MockData.swift
//  Lesson 2.06_AboutMeApp
//
//  Created by Юрий Куринной on 07.07.2023.
//

// MARK: User instance
let user = User(login: "Jane", password: "master", name: "Yuri Kurinnoi", photo: "Personal", background: [personalInfo, educationInfo, swiftLearningInfo, careerInfo])

// MARK: Personal Info
let personalInfo = [
    Entry(
        title: .text("Age:"),
        description: .number(39)
    ),
    Entry(
        title: .text("City:"),
        description: .text("Ulyanovsk")
    ),
    Entry(
        title:
                .text("Flow:"),
        description:
                .number(36)
    ),
    Entry(
        title:
                .text("Learning pace:"),
        description:
                .text("Slow-to-Average")
    )
]

// MARK: Education Info
let educationInfo = [
    Entry(
        title:
                .text("Linguistics & International communication: \nInterpreter of English"),
        description:
                .image("ULSU")
    ),
    Entry(
        title:
                .text("Economy & Business management: \nFinance manager"),
        description:
                .image("ULSU")
    ),
    Entry(
        title:
                .text("Flight crew training: \nAN-124 Radio Operator"),
        description:
                .image("VDA")
    )
]

// MARK: Swift learning Info
let swiftLearningInfo = [
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
                )
    ),
    Entry(
        title:
                .period(
                    startMonth: "May",
                    startYear: 2022,
                    endMonth: "June",
                    endYear: 2022
                ),
        description:
                .text(
                    "\"Swift for complete beginners\" by Paul Hudson, free Youtube course"
                )
    ),
    Entry(
        title:
                .period(
                    startMonth: "July",
                    startYear: 2022,
                    endMonth: "August",
                    endYear: 2022
                ),
        description:
                .text(
                    "\"SwiftUI basics\" by Ian Solomein, free Youtube course, unfinished"
                )
    ),
    Entry(
        title:
                .period(
                    startMonth: "September",
                    startYear: 2022,
                    endMonth: "February",
                    endYear: 2023
                ),
        description:
                .text(
                    "\"2019 Summer Swift course\" by Viacheslav Bilyi, free Youtube videos"
                )
    )
]

// MARK: Career Info
let careerInfo = [
    Entry(
        title:
                .years(
                    startYear: 2003,
                    endYear: 2009),
        description:
                .image("Interpreter")
    ),
    Entry(
        title:
                .years(
                    startYear: 2009,
                    endYear: 2012
                ),
        description:
                .image("Accountant")
    ),
    Entry(
        title:
                .years(
                    startYear: 2013,
                    endYear: 2023
                ),
        description:
                .image("RadioOps"))
]
