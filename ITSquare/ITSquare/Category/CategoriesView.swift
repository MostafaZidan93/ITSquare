//
//  Categories.swift
//  ITSquare
//
//  Created by M.M.Z on 24/12/2022.
//

import Foundation
import SwiftUI


struct Category: View {
    
    @StateObject var categoryViewModel = CategoryViewModel()
    
    var body: some View {
        NavigationView {
            ZStack {
                
                List(categoryViewModel.categoryArray) { category in
                    CategoryItemView(categoryModel: category)
                        .listRowBackground(Color("itsquarePrimary").cornerRadius(15))
                        .cornerRadius(15)
                    Spacer()
                }
                
                
                if categoryViewModel.isLoading {
                    LoadingView()
                }
            }
            .navigationTitle("Store Categories")
            .font(.title)
        }
        
        .onAppear {
            categoryViewModel.getCategories()
        }
        .alert(item: $categoryViewModel.alerItem) { alert in
            Alert(title: alert.title, message: alert.message, dismissButton: alert.dismissButton)
        }
    }
}

struct Category_Previews: PreviewProvider {
    static var previews: some View {
        Category()
    }
}
