//
//  AllCoinsView.swift
//  crypto_app
//
//  Created by Ikshit Chaudhari on 04/01/23.
//

import SwiftUI

struct AllCoinsView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 10){
            // coin image
            Image(systemName: "bitcoinsign.circle.fill")
                .resizable()
                .frame(width: 35, height: 35)
                .foregroundColor(.orange)
            
            // coin name
            HStack{
                Text("BTC")
                    .font(.callout)
                    .fontWeight(.bold)
                
                Text("$278,098")
                    .font(.caption)
                    .foregroundColor(.gray)
            }
            
            // coin % change
            Text("+ %0.12")
                .font(.title2)
                .foregroundColor(.green)
        }
        .frame(width: 140, height: 140)
        .overlay(
            RoundedRectangle(cornerRadius:20)
                .stroke(Color(.systemGray4), lineWidth: 2)
        )
    }
}

struct AllCoinsView_Previews: PreviewProvider {
    static var previews: some View {
        AllCoinsView()
    }
}
