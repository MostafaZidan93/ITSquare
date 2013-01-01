//
//  CategoryViewModel.swift
//  ITSquare
//
//  Created by M.M.Z on 04/01/2023.
//

import Foundation

class CategoryViewModel: ObservableObject {
    
    @Published var categoryArray: [CategoryModel] = []
    @Published var alerItem: AlertItem?
    @Published var isLoading = false
    
    func getCategories() {
        self.isLoading = true
        
        APIClient.shared.getCategories { categoryResult in
            
            DispatchQueue.main.async {
                
                switch categoryResult {
                case .success(let result):
                    self.categoryArray = result.filter {
                        $0.name != "Uncategorized"
                    }
                    
                case .failure(let error):
                    switch error {
                    case .invalidData:
                        self.alerItem = AlertContext.invalidData
                        
                    case .invalidURL:
                        self.alerItem = AlertContext.invalidURL
                        
                    case .invalidResponse:
                        self.alerItem = AlertContext.invalidRespnse
                        
                    case .unableToComplete:
                        self.alerItem = AlertContext.unableToComplete
                    }
                }
                self.isLoading = false
            }
        }
    }
}
