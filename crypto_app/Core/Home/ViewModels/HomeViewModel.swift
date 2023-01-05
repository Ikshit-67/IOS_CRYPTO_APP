//
//  HomeViewModel.swift
//  crypto_app
//
//  Created by Ikshit Chaudhari on 05/01/23.
//

import SwiftUI

class HomeViewModel: ObservableObject{
    
    init(){
        fetchCoinData()
    }
 
    func fetchCoinData() {
        let urlStr = "https://api.coingecko.com/api/v3/coins/markets?vs_currency=usd&order=market_cap_desc&per_page=100&page=1&sparkline=true&price_change_percentage=24h"
        
        guard let url = URL(string: urlStr) else { return }
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            if let error = error{
                print("DEBUG ERROR : \(error.localizedDescription)")
                return
            }
            
            if let response = response as? HTTPURLResponse{
                print("DEBUG RESPONSE : \(response.statusCode)")
            }
            
            guard let data = data else { return }
            print("DEBUG DATA \(data)")
        }
        .resume()
    }
}
