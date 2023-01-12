//
//  TopMoversView.swift
//  crypto_app
//
//  Created by Ikshit Chaudhari on 05/01/23.
//

import SwiftUI

struct TopMoversView: View {
    @StateObject var viewModel = HomeViewModel()
    var body: some View {
        VStack(alignment: .leading){
            
            // main heaading : top movers
            Text("Top Movers")
                .font(.title2)
                .fontWeight(.semibold)
            
            // top movers carousel
            ScrollView(.horizontal, showsIndicators: false){
                HStack(spacing: 10){
                    ForEach(viewModel.topMovingCoins){
                        coin in TopMoversItem(coin: coin)
                    }
                }
            }
        }
        .padding()
    }
}
//
//struct TopMoversView_Previews: PreviewProvider {
//    static var previews: some View {
//        TopMoversView()
//    }
//}
