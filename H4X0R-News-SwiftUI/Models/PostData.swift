//
//  PostData.swift
//  H4X0R-News-SwiftUI
//
//  Created by Muhammad Shayyan on 30/10/2022.
//

import Foundation

struct Results: Decodable {
    let hits: [Post]
}


struct Post: Decodable, Identifiable {
    var id: String {
        return objectID
    }
    let objectID: String
    let points: Int
    let title: String
    let url: String?
}
