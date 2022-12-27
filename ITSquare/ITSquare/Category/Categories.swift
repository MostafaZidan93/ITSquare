//
//  Categories.swift
//  ITSquare
//
//  Created by M.M.Z on 24/12/2022.
//

import Foundation
import SwiftUI


struct Category: View {
    
    let columns: [GridItem] = [GridItem(.flexible()), GridItem(.flexible())]
    
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(columns: columns) {
                    CategoryItemView(categoryName: "England Laptops", categoryImage: "dummy")
                    CategoryItemView(categoryName: "England Laptops", categoryImage: "dummy")
                    CategoryItemView(categoryName: "England Laptops", categoryImage: "dummy")
                    CategoryItemView(categoryName: "England Laptops", categoryImage: "dummy")
                    CategoryItemView(categoryName: "England Laptops", categoryImage: "dummy")
                    CategoryItemView(categoryName: "England Laptops", categoryImage: "dummy")
                    CategoryItemView(categoryName: "England Laptops", categoryImage: "dummy")
                    CategoryItemView(categoryName: "England Laptops", categoryImage: "dummy")
                    CategoryItemView(categoryName: "England Laptops", categoryImage: "dummy")
                    CategoryItemView(categoryName: "England Laptops", categoryImage: "dummy")
                }
            }
            .navigationTitle("Store Categories")
            .font(.title)
        }
        .onAppear {
            APIClient.shared.getData()
        }
    }
}

struct Category_Previews: PreviewProvider {
    static var previews: some View {
        Category()
    }
}
