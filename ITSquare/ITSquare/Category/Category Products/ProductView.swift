//
//  ProductView.swift
//  ITSquare
//
//  Created by M.M.Z on 07/01/2023.
//

import SwiftUI

struct ProductView: View {
    var testWord: String
    var body: some View {
        Text(testWord)
    }
}

struct ProductView_Previews: PreviewProvider {
    static var previews: some View {
        ProductView(testWord: "")
    }
}
