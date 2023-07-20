//
//  TabBar.swift
//  Weather
//
//  Created by Rudra on 21/07/23.
//

import SwiftUI

struct TabBar: View {
    
    var action: () -> Void
    
    var body: some View {
        ZStack {
            
            Arc()
                .fill(Color.tabBarBackground)
                .frame(height: 88)
                .overlay {
                    Arc()
                        .stroke(Color.tabBarBorder, lineWidth: 0.5)
                }
            
//            AddButtonTabBar()
//                .fill(Color.backgroud)
//                .frame(width: 258, height: 100)
//            
//            Image("Ellipse 1")
//                .blur(radius: 0.5)
//            Image("Ellipse 2")
//            Image("Ellipse Blur")
//            
//            Image(systemName: "plus")
//                .font(.system(size: 28))
//                .bold()
//                .foregroundColor(Color(red: 0.28, green: 0.19, blue: 0.62))
            
            // MARK: Tab Items
            HStack {
                    //MARK: Expand Button
                Button {
                    
                } label: {
                    Image(systemName: "mappin.and.ellipse")
                        .frame(width: 44, height: 44)
                }
                
                Spacer()
                
                // MARK: Navigation Button
                
                NavigationLink {
            
                } label: {
                    Image(systemName: "list.star")
                        .frame(width: 44, height: 44)
                }
            }
            .font(.title2)
            .foregroundColor(.white)
            .padding(EdgeInsets(top: 20, leading: 32, bottom: 24, trailing: 32))
        }
        .frame(maxHeight: .infinity, alignment: .bottom)
        .ignoresSafeArea()
        
    }
}

struct TabBar_Previews: PreviewProvider {
    static var previews: some View {
        TabBar(action: {})
            .preferredColorScheme(.dark)
    }
}
