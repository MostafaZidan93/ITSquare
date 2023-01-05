//
//  Error+Alert.swift
//  ITSquare
//
//  Created by M.M.Z on 05/01/2023.
//

import Foundation
import SwiftUI

enum NetworkError: Error {
    case invalidURL
    case invalidResponse
    case invalidData
    case unableToComplete
}

struct AlertItem: Identifiable {
    let id = UUID()
    let title: Text
    let message: Text
    let dismissButton: Alert.Button
}


struct AlertContext {
    static let invalidURL       = AlertItem(title: Text("Invalid URL"),
                                            message: Text("URL Cannot be created"),
                                            dismissButton: .default(Text("Ok")))
    
    
    static let invalidRespnse   = AlertItem(title: Text("Invalid Respnse"),
                                            message: Text("Invalid Response from the server please try again later"),
                                            dismissButton: .default(Text("Ok")))
    
    
    static let invalidData      = AlertItem(title: Text("Server Error!!!"),
                                            message: Text("Invalid Data Received from Server, please Contact Support"),
                                            dismissButton: .default(Text("Ok")))
    
    
    static let unableToComplete = AlertItem(title: Text("UnableToComplete"),
                                            message: Text("Something went Wrong Please Check your Internet Connection Try Again Later"),
                                            dismissButton: .default(Text("Ok")))
}
