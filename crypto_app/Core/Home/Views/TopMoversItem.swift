//
//  TopMoversItem.swift
//  crypto_app
//
//  Created by Ikshit Chaudhari on 05/01/23.
//

import SwiftUI
import Kingfisher

struct TopMoversItem: View {
    @StateObject var viewModel = HomeViewModel()
    let coin: Coin
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10){
            
            // coin image
            KFImage(URL(string: coin.image))
                .resizable()
                .frame(width: 35, height: 35)
                .foregroundColor(.blue)
            
            // coin info
            HStack{
                
                //coin name
                Text(coin.symbol.uppercased())
                    .font(.callout)
                    .fontWeight(.semibold)
                
                // coin price
                Text(coin.currentPrice.toCurrency())
                    .font(.callout)
                    .foregroundColor(.gray)
            }
            
            // price % change
            Text(coin.priceChangePercentage24H.toPercent())
                .font(.title3)
                .foregroundColor(coin.priceChangePercentage24H > 0 ? .green : .red)
        }
        // gray frame
        .frame(width: 150, height: 150)
        .background(Color("ItemBackgroundColor"))
        .overlay(
            RoundedRectangle(cornerRadius: 10)
                .stroke(Color(.systemGray2),lineWidth: 2)
        )
    }
}
//
//struct TopMoversItem_Previews: PreviewProvider {
//    static var previews: some View {
//        TopMoversItem()
//    }
//}
