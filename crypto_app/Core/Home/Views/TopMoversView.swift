//
//  TopMoversView.swift
//  crypto_app
//
//  Created by Ikshit Chaudhari on 05/01/23.
//

import SwiftUI

struct TopMoversView: View {
    var body: some View {
        VStack(alignment: .leading){
            
            // main heaading : top movers
            Text("Top Movers")
                .font(.title2)
                .fontWeight(.semibold)
            
            // top movers carousel
            ScrollView(.horizontal, showsIndicators: false){
                HStack(spacing: 10){
                    ForEach(0 ..< 5, id: \.self){
                        _ in TopMoversItem()
                    }
                }
            }
        }
        .padding()
    }
}

struct TopMoversView_Previews: PreviewProvider {
    static var previews: some View {
        TopMoversView()
    }
}
