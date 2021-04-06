//
//  CountryItemView.swift
//  supHealth
//
//  Created by Aurelie Duprez on 05/04/2021.
//  Copyright © 2021 aurelieduprez. All rights reserved.
//

import Foundation
import SwiftUI

struct CountryItemView: View {
    
    var country: Country
    var isFavorite: Bool
    @Environment(\.colorScheme) var colorScheme
    
    var body: some View {
        
        // Navigation cell
        HStack() {
            
            // Country flag
            Image(country.CountryCode)
                .resizable()
                .cornerRadius(8.0)
                .scaledToFit()
                .frame(width: 64.0)
            
            // Country name label
            Text(country.Country)
            
            Spacer()
            
            // Favorite indicator
            if self.isFavorite {
                Image(systemName: "star.fill")
                    .foregroundColor(
                        colorScheme != .dark ? Color(UIColor.systemYellow) : .yellow
                    )
            }
        }
        
    }
}