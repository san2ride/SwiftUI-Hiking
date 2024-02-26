//
//  Hike.swift
//  Hiking
//
//  Created by Cause  I'm Electric on 2/26/24.
//

import Foundation

struct Hike: Identifiable {
    let id = UUID()
    let name: String
    let photo: String
    let miles: Double
}
