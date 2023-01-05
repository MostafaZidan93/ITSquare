//
//  CategoryItemView.swift
//  ITSquare
//
//  Created by M.M.Z on 27/12/2022.
//

import SwiftUI

struct CategoryItemView: View {
    let categoryModel: CategoryModel
    var body: some View {
        VStack {
            Image("dummy")
                .resizable()
                .scaledToFit()
                .cornerRadius(15)
            Text(categoryModel.name ?? "Optional name")
                .font(.title)
                .fontWeight(.bold)
                .padding()
                .scaledToFit()
                .minimumScaleFactor(0.5)
                
        }
        .padding()
    }
}

struct CategoryItemView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryItemView(categoryModel: CategoryModel(id: 0, parent: 0, name: "demo", image: CategoryImage(id: 0, src: "source")))
    }
}
