//
//  itemtest.swift
//  crypto_app
//
//  Created by Ikshit Chaudhari on 05/01/23.
//

import SwiftUI

struct itemtest: View {
    var body: some View {
        VStack{
            Spacer()
            // coin image
            Image(systemName: "bitcoinsign.circle.fill")
                .resizable()
                .frame(width: 50, height: 50)
                .foregroundColor(.blue)
            
            Spacer()
            
            // coin name and price
            HStack{
                Spacer()
                Text("BTC")
                    .font(.title2)
                
                Spacer()
                
                Text("$ 123,678")
                    .font(.title2)
                    .foregroundColor(.gray)
                Spacer()
            }
            
            Spacer()
            
            // coin % change
            Text("+ %2.334")
                .font(.title3)
                .foregroundColor(.green)
            Spacer()
        }
    }
}

struct itemtest_Previews: PreviewProvider {
    static var previews: some View {
        itemtest()
    }
}
