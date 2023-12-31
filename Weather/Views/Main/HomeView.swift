//
//  HomeView.swift
//  Weather
//
//  Created by Rudra on 19/07/23.
//

import SwiftUI
import BottomSheet

enum BottomSheetPosition: CGFloat, CaseIterable {
    case top = 0.83 // 702/844
    case middle = 0.385 // 325/844
}

struct HomeView: View {
    
    @State var bottomSheetPosition: BottomSheetPosition = .middle
    
    var body: some View {
        NavigationView {
            ZStack {
                // MARK: Background color
                Color.backgroud
                    .ignoresSafeArea()
                
                //MARK: Background Image
                Image("Background")
                    .resizable()
                    .ignoresSafeArea()
                
                //MARK: House Image
                Image("House")
                    .frame(maxHeight: .infinity, alignment: .top)
                    .padding(.top, 257)
                
                //MARK: Temp Detail Stack Start
                
                VStack {
                    Text("Montreal")
                        .font(.largeTitle)
                    
                    VStack {

                        Text(attributedString)
                        
                        Text("H:24°  L:18°")
                            .font(.title3.weight(.semibold))
                    }
                    
                    Spacer()
                }
                .padding(.top, 51)
                
                
                //MARK: Temp Detail Stack End
                
                //MARK: BottomSheet Start
                
                BottomSheetView(position: $bottomSheetPosition) {
//                    Text(bottomSheetPosition.rawValue.formatted())
                } content: {
                    ForecastView()
                }

                
                //MARK: BottomSheet End
                
                TabBar(action: {
                    bottomSheetPosition = .top
                })
                //MARK: TabBar
            }
            .navigationBarHidden(true)
        }
    }
    
    //MARK: Attributed String Declaration
    
    private var attributedString: AttributedString {
        var string = AttributedString("19°" + "\n " + "Mostly Clear")
        
        if let temp = string.range(of: "19°") {
            string[temp].font = .system(size: 96, weight: .thin)
            string[temp].foregroundColor = .primary
        }
        
        if let pipe = string.range(of: " | ") {
            string[pipe].font = .title3.weight(.semibold)
            string[pipe].foregroundColor = .secondary
        }
        
        if let weather = string.range(of: "Mostly Clear") {
            string[weather].font = .title3.weight(.semibold)
            string[weather].foregroundColor = .secondary
        }
        
        return string
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
            .preferredColorScheme(.dark)
    }
}
