//
//  AllCoinsContainer.swift
//  crypto_app
//
//  Created by Ikshit Chaudhari on 05/01/23.
//

import SwiftUI

struct AllCoinsContainer: View {
    @StateObject var viewModel = HomeViewModel()
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
                ForEach(viewModel.coins){
                    coin in CoinRowView(coin: coin)
                }
            }
        }
    }
}

//
//struct AllCoinsContainer_Previews: PreviewProvider {
//    static var previews: some View {
//        AllCoinsContainer()
//    }
//}
