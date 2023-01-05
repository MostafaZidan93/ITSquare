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
    
    func getCategories() {
        APIClient.shared.getCategories { categoryResult in
            DispatchQueue.main.async {
                
                switch categoryResult {
                case .success(let result):
                    self.categoryArray = result
                    
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
                
            }
        }
    }
}
