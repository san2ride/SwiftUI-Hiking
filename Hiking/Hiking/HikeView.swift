//
//  HikeView.swift
//  Hiking
//
//  Created by Cause  I'm Electric on 2/26/24.
//

import SwiftUI

struct HikeView: View {
    
    let hikes = [
        Hike(name: "Salmonberry Trail", photo: "sal", miles: 6),
        Hike(name: "Tom, Dick, and Harry Mountain", photo: "tom", miles: 5.8),
        Hike(name: "Tamanawas Falls", photo: "tam", miles: 5)
    ]
    
    var body: some View {
        List(hikes) { hike in
            HStack(alignment: .top) {
                Image(hike.photo)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .clipShape(RoundedRectangle(cornerRadius: 16.0))
                    .frame(width: 75)
                VStack(alignment: .leading) {
                    Text(hike.name)
                    Text("\(hike.miles.formatted()) miles")
                }
            }
        }
    }
}

#Preview {
    HikeView()
}
