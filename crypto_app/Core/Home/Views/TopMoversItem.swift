//
//  TopMoversItem.swift
//  crypto_app
//
//  Created by Ikshit Chaudhari on 05/01/23.
//

import SwiftUI

struct TopMoversItem: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 10){
            
            // coin image
            Image(systemName: "bitcoinsign.circle.fill")
                .resizable()
                .frame(width: 35, height: 35)
                .foregroundColor(.blue)
            
            // coin info
            HStack{
                
                //coin name
                Text("BTC")
                    .font(.callout)
                    .fontWeight(.semibold)
                
                // coin price
                Text("$ 234,786")
                    .font(.callout)
                    .foregroundColor(.gray)
            }
            
            // price % change
            Text("+ %2.367")
                .font(.title3)
                .foregroundColor(.green)
        }
        // gray frame
        .frame(width: 150, height: 150)
        .overlay(
            RoundedRectangle(cornerRadius: 10)
                .stroke(Color(.systemGray2),lineWidth: 2)
        )
    }
}

struct TopMoversItem_Previews: PreviewProvider {
    static var previews: some View {
        TopMoversItem()
    }
}
