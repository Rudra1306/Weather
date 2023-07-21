//
//  Trials.swift
//  Weather
//
//  Created by Rudra on 21/07/23.
//

import SwiftUI

struct Trials: View {
    var body: some View {
        ZStack {
            VStack {
                Rectangle()
                    .fill(.gray)
                    .frame(width: 200, height: 200)
                
                
                RoundedRectangle(cornerRadius: 25)
                    .fill(.red)
                    .frame(width: 200, height: 200)
                
                Capsule()
                    .fill(.green)
                    .frame(width: 100, height: 50)
                
                Ellipse()
                    .fill(.blue)
                    .frame(width: 100, height: 50)
                
                Circle()
                    .fill(.white)
                    .frame(width: 100, height: 50)
            }
        }
    }
}

struct Trials_Previews: PreviewProvider {
    static var previews: some View {
        Trials()
    }
}
