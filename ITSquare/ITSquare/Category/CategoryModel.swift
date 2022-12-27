//
//  Model.swift
//  ITSquare
//
//  Created by M.M.Z on 26/12/2022.
//

import Foundation

struct CategoryModel: Codable {
    let id: Int?
    let parent: Int?
    let name: String?
    let image: CategoryImage?
}


struct CategoryImage: Codable {
    let id: Int?
    let src: String?
}
