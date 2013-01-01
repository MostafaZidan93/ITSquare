//
//  LoadingView.swift
//  ITSquare
//
//  Created by M.M.Z on 05/01/2023.
//

import Foundation
import SwiftUI

struct ActivityIndicator: UIViewRepresentable {

    
    func makeUIView(context: Context) -> some UIView {
        let activityIndecator = UIActivityIndicatorView(style: .large)
        activityIndecator.color = UIColor(named: "itsquarePrimary")
        activityIndecator.startAnimating()
        return activityIndecator
    }
    
    
    func updateUIView(_ uiView: UIViewType, context: Context) {
    }
   
    }

struct LoadingView: View {
    var body: some View {
        ZStack {
            Color(.systemBackground)
                .edgesIgnoringSafeArea(.all)
            ActivityIndicator()
        }
    }
}

