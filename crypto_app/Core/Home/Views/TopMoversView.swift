//
//  TopMoversView.swift
//  crypto_app
//
//  Created by Ikshit Chaudhari on 04/01/23.
//

import SwiftUI

struct TopMoversView: View {
    var body: some View {
        
        VStack(alignment: .leading){
            // main heading : top movers
            Text("Top Movers")
                .font(.title2)
                .fontWeight(.semibold)
            
            // horizontal carousel
            ScrollView(.horizontal, showsIndicators: false){
                
                HStack{
                    ForEach(0 ..< 5, id: \.self) {
                        _ in TopMoversItemView()
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
