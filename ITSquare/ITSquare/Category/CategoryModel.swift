//
//  Model.swift
//  ITSquare
//
//  Created by M.M.Z on 26/12/2022.
//

import Foundation

struct CategoryModel: Codable {
    let id: Int?
    let name: String?
    let image: Image?
}


struct Image: Codable {
    let id: Int?
    let src: String?
}
