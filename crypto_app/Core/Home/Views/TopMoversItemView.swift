//
//  AllCoinsView.swift
//  crypto_app
//
//  Created by Ikshit Chaudhari on 04/01/23.
//

import SwiftUI

struct TopMoversItemView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 10){
            
            // coin image
            Image(systemName: "bitcoinsign.circle.fill")
                .resizable()
                .frame(width: 35, height: 35)
                .foregroundColor(.orange)
                
            
            // coin info
            HStack{
                
                // coin name
                Text("BTC")
                    .font(.callout)
                    .fontWeight(.semibold)
                
                // coin price
                Text("$230,987")
                    .font(.callout)
                    .foregroundColor(.gray)
            }
            
            // price % change
            Text("+ 1.987%")
                .font(.title3)
                .foregroundColor(.green)
        }
        .frame(width: 150, height: 150)
        .overlay(
            RoundedRectangle(cornerRadius: 10)
                .stroke(Color(.systemGray3), lineWidth: 2)
        )
    }
}

struct AllCoinsView_Previews: PreviewProvider {
    static var previews: some View {
        TopMoversItemView()
    }
}
