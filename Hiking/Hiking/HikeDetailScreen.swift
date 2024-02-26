//
//  HikeDetailScreen.swift
//  Hiking
//
//  Created by Cause  I'm Electric on 2/26/24.
//

import SwiftUI

struct HikeDetailScreen: View {
    
    let hike: Hike
    
    var body: some View {
        VStack {
            Image(hike.photo)
                .resizable()
                .aspectRatio(contentMode: .fit)
            Text(hike.name)
                .font(.title)
            Text("\(hike.miles.formatted()) miles")
            Spacer()
        }.navigationTitle(hike.name)
            .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    NavigationStack {
        HikeDetailScreen(hike: Hike(name: "Salmonberry Trail", photo: "sal", miles: 6))
    }
}
