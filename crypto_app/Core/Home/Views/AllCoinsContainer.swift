//
//  AllCoinsContainer.swift
//  crypto_app
//
//  Created by Ikshit Chaudhari on 05/01/23.
//

import SwiftUI

struct AllCoinsContainer: View {
    var body: some View {
        VStack(alignment: .leading){
            
            // all coin heading
            Text("All Coins")
                .font(.title2)
                .fontWeight(.semibold)
                .padding()
            
            // name and filter by
            HStack{
                Text("Coins")
                
                Spacer()
                
                Text("Prices")
            }
            .font(.callout)
            .padding(.horizontal)
            .foregroundColor(.gray)
            
//             all coins
            ScrollView{
                ForEach(0 ..< 20, id: \.self){
                    _ in CoinRowView()
                }
            }
        }
    }
}

struct AllCoinsContainer_Previews: PreviewProvider {
    static var previews: some View {
        AllCoinsContainer()
    }
}
