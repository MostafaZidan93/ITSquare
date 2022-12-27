//
//  Categories.swift
//  ITSquare
//
//  Created by M.M.Z on 24/12/2022.
//

import Foundation
import SwiftUI


struct Category: View {
    var body: some View {
        NavigationView {
            Text("Categories!!!!")
        }
        .onAppear {
            APIClient.shared.getData()
        }
    }
}
