//
//  MyViewThatFitsView.swift
//  SwiftUITest
//
//  Created by TY on 9/15/23.
//

import SwiftUI

struct MyViewThatFitsView: View {
    var body: some View {
        MoonPhaseView(phase: "Waxing Crescent", image: Image(systemName: "moonphase.waxing.crescent"))
            .frame(maxWidth: 200)
    }
}

struct MoonPhaseView: View {
    var phase: String
    var image: Image
    
    var body: some View {
        ViewThatFits {
            HStack {
                image
                    .resizable()
                    .scaledToFit()
                Text(phase)
            }
            image
                .resizable()
                .scaledToFit()
        }
        .padding()
    }
}

struct MyViewThatFitsView_Previews: PreviewProvider {
    static var previews: some View {
        MyViewThatFitsView()
    }
}
