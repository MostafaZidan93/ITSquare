//
//  APIClient.swift
//  ITSquare
//
//  Created by M.M.Z on 26/12/2022.
//

import Foundation
import Alamofire

class APIClient {
    static let shared = APIClient()
    let baseURL = "https://itsquare-eg.com/wp-json/wc/v2/products/categories?consumer_key=ck_5a6c3f7819a4000e6c08e427e67cc5495c02935b&consumer_secret=cs_28189404b0490d8a4ec7d239cfcdda4119797afe"
    func getData() {
        guard let url = URL(string: baseURL) else {return}
//        let params: [String: Any] = ["consumer_key": "ck_5a6c3f7819a4000e6c08e427e67cc5495c02935b",
//                      "consumer_secret": "cs_28189404b0490d8a4ec7d239cfcdda4119797afe"]
        AF.request(url, method: .get, encoding: JSONEncoding.default).responseJSON { response in
//            guard let data = response.data else {
//                print("error fetching data!!!!!!!!!!!!!!!")
//                return
//            }
            print("Your Response is:")
            print(response.result)
        }
    }
}
