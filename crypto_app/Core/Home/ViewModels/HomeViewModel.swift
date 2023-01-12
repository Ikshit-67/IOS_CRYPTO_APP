//
//  HomeViewModel.swift
//  crypto_app
//
//  Created by Ikshit Chaudhari on 05/01/23.
//
//  For API CALL

import SwiftUI

class HomeViewModel: ObservableObject{
    @Published var coins = [Coin]()
    @Published var topMovingCoins = [Coin]()
    
    init(){
        fetchCoinData()
    }
    
    func fetchCoinData(){
        
        let urlString = "https://api.coingecko.com/api/v3/coins/markets?vs_currency=usd&order=market_cap_desc&per_page=100&page=1&sparkline=true&price_change_percentage=24h"
        
        guard let url = URL(string: urlString) else { return }
        
        URLSession.shared.dataTask(with: url) {data, response, error in
            if let error = error {
                print("DEBUG : ERROR\(error.localizedDescription)")
            }
            
            if let response = response as? HTTPURLResponse{
                print("DEBUG : Response code : \(response.statusCode)")
            }
            
            
            guard let data = data else { return }
            
            do{
                let coins = try JSONDecoder().decode([Coin].self, from: data)
                DispatchQueue.main.async {
                    self.coins = coins
                    self.calculateTopMovingCoins()
                }
            } catch let error {
                print("Status : Phuked Up, beech throw this error : \(error)")
            }
            
            
        }
        .resume()
        
    }
    
    func calculateTopMovingCoins() {
        
        let topMovers = coins.sorted(by: {$0.priceChangePercentage24H > $1.priceChangePercentage24H})
        self.topMovingCoins = Array(topMovers.prefix(5))
    }
    
}
// dome
