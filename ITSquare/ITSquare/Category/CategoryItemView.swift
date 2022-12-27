//
//  CategoryItemView.swift
//  ITSquare
//
//  Created by M.M.Z on 27/12/2022.
//

import SwiftUI

struct CategoryItemView: View {
    let categoryName: String
    let categoryImage: String
    var body: some View {
        VStack {
            Image(categoryImage)
                .resizable()
                .cornerRadius(25)
            Text(categoryName)
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
        CategoryItemView(categoryName: "CategoryName", categoryImage: "dummy")
    }
}
