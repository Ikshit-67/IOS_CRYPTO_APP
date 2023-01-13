//
//  CoinRowView.swift
//  crypto_app
//
//  Created by Ikshit Chaudhari on 05/01/23.
//

import SwiftUI
import Kingfisher

struct CoinRowView: View {
    let coin: Coin
    var body: some View {
        HStack{
            // serial number
            Text("\(coin.marketCapRank)")
                .font(.caption)
                .foregroundColor(.gray)
                .bold()
                
            
            // image
            KFImage(URL(string: coin.image))
                .resizable()
                .scaledToFit()
                .frame(width: 35, height: 35)
                .padding(.leading, 4)
            
            // name hstack
            VStack(alignment: .leading, spacing: 4){
                // Full name
                Text(coin.name)
//                    .font(.caption)
                    .fontWeight(.semibold)
                
                // Short name
                Text(coin.symbol.uppercased())
                    .font(.caption)
                    .foregroundColor(.gray)
            }
            .padding(.leading, 10)
            
            Spacer()
            
            // Price
            VStack(alignment: .trailing, spacing: 5){
                Text(coin.currentPrice.toCurrency())
                    .font(.caption)
                    .fontWeight(.semibold)
                
                Text(coin.priceChangePercentage24H.toPercent())
                    .foregroundColor(coin.priceChangePercentage24H > 0 ? .green : .red)
            }
        }
        .padding(.horizontal)
        .padding(.vertical, 4)
    }
}
//
//struct CoinRowView_Previews: PreviewProvider {
//    static var previews: some View {
//        CoinRowView()
//    }
//}
