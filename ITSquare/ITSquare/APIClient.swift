//
//  APIClient.swift
//  ITSquare
//
//  Created by M.M.Z on 26/12/2022.
//

import Foundation

class APIClient {
    static let shared = APIClient()
    
    func getCategories(completionHandler: @escaping (Result<[CategoryModel], NetworkError>) -> Void) {
        print("Did Enter GetCategories Method!!!!!!!!!!!!!!!!!!!!!!!!")
        
        
        var urlComponent = URLComponents()
        urlComponent.scheme = "https"
        urlComponent.host = "itsquare-eg.com"
        urlComponent.path = "/wp-json/wc/v2/products/categories"
        
        let queryParams = [
        URLQueryItem(name: "consumer_key", value: "ck_5a6c3f7819a4000e6c08e427e67cc5495c02935b"),
        URLQueryItem(name: "consumer_secret", value: "cs_28189404b0490d8a4ec7d239cfcdda4119797afe"),
        URLQueryItem(name: "per_page", value: "30"),
        URLQueryItem(name: "parent", value: "0")
            ]
        
        urlComponent.queryItems = queryParams
        
        guard let url = urlComponent.url else {
            completionHandler(.failure(.invalidURL))
            return
            
        }
        let session = URLSession.shared.dataTask(with: url) { data, response, error in
            if let error = error {
                print("!!!!!!!!!!!!!!!!!!!!!!!!:\(error.localizedDescription)")
                completionHandler(.failure(.unableToComplete))
                return
            }

            guard let response = response as? HTTPURLResponse, response.statusCode == 200 else {
                completionHandler(.failure(.invalidResponse))
                return
            }
            
            guard let data = data else {
                completionHandler(.failure(.invalidData))
                return
            }
            
            do {
                let result = try JSONDecoder().decode([CategoryModel].self, from: data)
                
                completionHandler(.success(result))
                print("Result is: \(result)")
            } catch {
                completionHandler(.failure(.unableToComplete))
                print("Failed to decode!!!!!!!")
            }
        }
        session.resume()
    }
}
