//
//  HomeView.swift
//  crypto_app
//
//  Created by Ikshit Chaudhari on 05/01/23.
//

import SwiftUI

struct HomeView: View {
    
    @StateObject var viewModel = HomeViewModel()
    
    var body: some View {
        NavigationView{
            ScrollView(.vertical, showsIndicators: false){
                
                // top movers
                TopMoversView(viewModel: viewModel)
                
                Divider()
                
                // all coins
                AllCoinsContainer(viewModel: viewModel)
                
            }
            .navigationTitle("Live Prices")
        }
    }
}
//
//struct HomeView_Previews: PreviewProvider {
//    static var previews: some View {
//        HomeView()
//    }
//}
