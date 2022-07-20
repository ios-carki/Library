//
//  Book.swift
//  Library
//
//  Created by Carki on 2022/07/20.
//

import Foundation

struct Book {
    var title: String
    var rate: Double
}

struct BookInfo {

    let book: [Book] = [
        Book(title: "신과함께인과연", rate: 9.1),
        Book(title: "신과함께죄와벌", rate: 9.2),
        Book(title: "아바타", rate: 9.4),
        Book(title: "도둑들", rate: 9.5),
        Book(title: "명량", rate: 9.1),
        Book(title: "베테랑", rate: 8.9),
        Book(title: "부산행", rate: 8.4),
        Book(title: "알라딘", rate: 8.2),
        Book(title: "암살", rate: 9.8)
        ]
}
