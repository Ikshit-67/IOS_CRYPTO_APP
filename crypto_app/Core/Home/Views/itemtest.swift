//
//  itemtest.swift
//  crypto_app
//
//  Created by Ikshit Chaudhari on 05/01/23.
//

import SwiftUI

struct itemtest: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 15){
            //coin image
            Image(systemName: "bitcoinsign.circle.fill")
                .resizable()
                .frame(width: 50, height: 50)
                .foregroundColor(.blue)
            
            //coin info
            HStack{
                // coin name
                Text("BTC")
                    .font(.title2)
                    .fontWeight(.semibold)
                
                // coin price
                Text("$230,343")
                    .font(.title2)
                    .foregroundColor(.gray)
            }
            
            // % change
            Text("+ %1.334")
                .font(.title)
                .foregroundColor(.green)
        }
        .frame(width: 180, height: 180)
        .overlay(
            RoundedRectangle(cornerRadius: 15)
                .stroke(Color(.systemGray2), lineWidth: 2)
        )
    }
}

struct itemtest_Previews: PreviewProvider {
    static var previews: some View {
        itemtest()
    }
}
