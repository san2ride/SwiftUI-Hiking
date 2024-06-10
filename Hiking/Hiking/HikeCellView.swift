//
//  HikeCellView.swift
//  Hiking
//
//  Created by Jason Sanchez on 6/10/24.
//

import SwiftUI

struct HikeCellView: View {
    
    let hike: Hike
    
    var body: some View {
        HStack(alignment: .top) {
            Image(hike.photo)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .clipShape(RoundedRectangle(cornerRadius: 16.0))
                .frame(width: 100)
            VStack(alignment: .leading) {
                Text(hike.name)
                Text("\(hike.miles.formatted()) miles")
            }
        }
    }
}

/*
#Preview {
    HikeCellView(hike: Hike)
}
*/
