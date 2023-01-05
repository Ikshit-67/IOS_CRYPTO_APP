//
//  AllCoinsView.swift
//  crypto_app
//
//  Created by Ikshit Chaudhari on 04/01/23.
//

import SwiftUI

struct AllCoinsView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 15){

            // coin image
            Image(systemName: "bitcoinsign.circle.fill")
                .resizable()
                .frame(width: 45, height: 45)
                .foregroundColor(.blue)
            
            // coin info
            HStack{
                
                // coin name
                Text("BTC")
                    .font(.title3)
                    .fontWeight(.bold)
                
                // coin price
                Text("$278,098")
                    .font(.title3)
                    .foregroundColor(.gray)
            }
            
            // coin % change
            Text("+ %0.12")
                .font(.title2)
                .fontWeight(.semibold)
                .foregroundColor(.green)
        }
        .frame(width: 165, height: 165)
        .overlay(
            RoundedRectangle(cornerRadius:20)
                .stroke(Color(.systemGray3), lineWidth: 3)
        )
    }
}

struct AllCoinsView_Previews: PreviewProvider {
    static var previews: some View {
        AllCoinsView()
    }
}
