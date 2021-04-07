//
//  ButtonStyle.swift
//  StarryNight
//
//  Created by Ronald Jabouin on 4/4/21.
//

import SwiftUI

struct ButtonStyle: View {
    let title: LocalizedStringKey
    var body: some View {
        Text(title)
            .font(.caption)
            .fontWeight(.semibold)
            .frame(width: 90, height: 40)
            .foregroundColor(.white)
            .background(Color.blue)
            .cornerRadius(10)
    }
}

struct ButtonStyle2: View {
    let title: LocalizedStringKey
    var body: some View {
        Text(title)
            .font(.subheadline)
            .fontWeight(.semibold)
            .frame(width: 120, height: 60)
            .foregroundColor(.white)
            .background(Color.green)
            .cornerRadius(10)
    }
}

struct ButtonStyle_Previews: PreviewProvider {
    static var previews: some View {
        ButtonStyle(title: "test title")
    }
}
