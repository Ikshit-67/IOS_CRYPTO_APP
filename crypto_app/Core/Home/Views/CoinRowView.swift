//
//  CoinRowView.swift
//  crypto_app
//
//  Created by Ikshit Chaudhari on 05/01/23.
//

import SwiftUI

struct CoinRowView: View {
    var body: some View {
        HStack{
            // serial number
            Text("1")
                .font(.title3)
                .foregroundColor(.gray)
                
            
            // image
            Image(systemName: "bitcoinsign.circle.fill")
                .resizable()
                .scaledToFit()
                .frame(width: 35, height: 35)
                .foregroundColor(.blue)
                .padding(.leading, 4)
            
            // name hstack
            VStack(alignment: .leading, spacing: 4){
                // Full name
                Text("Bitcoin")
                    .font(.title3)
                    .fontWeight(.semibold)
                
                // Short name
                Text("BTC")
                    .foregroundColor(.gray)
            }
            .padding(.leading, 10)
            
            Spacer()
            
            // Price
            VStack(alignment: .trailing, spacing: 5){
                Text("$23,000.00")
                    .font(.callout)
                    .fontWeight(.semibold)
                
                Text("+ 1.345%")
                    .foregroundColor(.green)
            }
        }
        .padding(.horizontal)
        .padding(.vertical, 4)
    }
}

struct CoinRowView_Previews: PreviewProvider {
    static var previews: some View {
        CoinRowView()
    }
}
