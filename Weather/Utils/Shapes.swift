//
//  Shapes.swift
//  Weather
//
//  Created by Rudra on 21/07/23.
//

import SwiftUI

struct Arc: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        
        path.move(to: CGPoint(x: rect.minX - 1, y: rect.minY))
        path.addQuadCurve(to:  CGPoint(x: rect.maxX + 1, y: rect.minY), control: CGPoint(x: rect.midX, y: rect.midY))
        path.addLine(to: CGPoint(x: rect.maxX + 1, y: rect.maxY + 1))
        path.addLine(to: CGPoint(x: rect.minX - 1, y: rect.maxY + 1))
        path.closeSubpath()
        
        
        return path
    }
}


struct AddButtonTabBar: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = rect.size.width
        let height = rect.size.height
        path.move(to: CGPoint(x: 0.42105*width, y: 0))
        path.addLine(to: CGPoint(x: 0.57895*width, y: 0))
        path.addCurve(to: CGPoint(x: 0.77343*width, y: 0.48699*height), control1: CGPoint(x: 0.69925*width, y: 0), control2: CGPoint(x: 0.73497*width, y: 0.2414*height))
        path.addCurve(to: CGPoint(x: 0.98496*width, y: height), control1: CGPoint(x: 0.81325*width, y: 0.74125*height), control2: CGPoint(x: 0.85338*width, y: height))
        path.addLine(to: CGPoint(x: 0.01504*width, y: height))
        path.addCurve(to: CGPoint(x: 0.22657*width, y: 0.48699*height), control1: CGPoint(x: 0.14662*width, y: height), control2: CGPoint(x: 0.18675*width, y: 0.74125*height))
        path.addCurve(to: CGPoint(x: 0.42105*width, y: 0), control1: CGPoint(x: 0.26503*width, y: 0.2414*height), control2: CGPoint(x: 0.30075*width, y: 0))
        path.closeSubpath()
        path.move(to: CGPoint(x: 0.42105*width, y: 0.0025*height))
        path.addLine(to: CGPoint(x: 0.57895*width, y: 0.0025*height))
        path.addCurve(to: CGPoint(x: 0.70616*width, y: 0.15301*height), control1: CGPoint(x: 0.63881*width, y: 0.0025*height), control2: CGPoint(x: 0.67756*width, y: 0.0625*height))
        path.addCurve(to: CGPoint(x: 0.77065*width, y: 0.47575*height), control1: CGPoint(x: 0.73387*width, y: 0.2407*height), control2: CGPoint(x: 0.75208*width, y: 0.35704*height))
        path.addCurve(to: CGPoint(x: 0.77256*width, y: 0.48795*height), control1: CGPoint(x: 0.77129*width, y: 0.47981*height), control2: CGPoint(x: 0.77192*width, y: 0.48388*height))
        path.addLine(to: CGPoint(x: 0.77295*width, y: 0.49042*height))
        path.addCurve(to: CGPoint(x: 0.84408*width, y: 0.84048*height), control1: CGPoint(x: 0.79272*width, y: 0.61665*height), control2: CGPoint(x: 0.81271*width, y: 0.74427*height))
        path.addCurve(to: CGPoint(x: 0.95455*width, y: 0.9975*height), control1: CGPoint(x: 0.87058*width, y: 0.92173*height), control2: CGPoint(x: 0.90518*width, y: 0.98054*height))
        path.addLine(to: CGPoint(x: 0.04546*width, y: 0.9975*height))
        path.addCurve(to: CGPoint(x: 0.15592*width, y: 0.84048*height), control1: CGPoint(x: 0.09483*width, y: 0.98054*height), control2: CGPoint(x: 0.12943*width, y: 0.92173*height))
        path.addCurve(to: CGPoint(x: 0.22705*width, y: 0.49042*height), control1: CGPoint(x: 0.1873*width, y: 0.74427*height), control2: CGPoint(x: 0.20728*width, y: 0.61665*height))
        path.addLine(to: CGPoint(x: 0.22744*width, y: 0.48795*height))
        path.addCurve(to: CGPoint(x: 0.22935*width, y: 0.47575*height), control1: CGPoint(x: 0.22808*width, y: 0.48388*height), control2: CGPoint(x: 0.22871*width, y: 0.47981*height))
        path.addCurve(to: CGPoint(x: 0.29384*width, y: 0.15301*height), control1: CGPoint(x: 0.24792*width, y: 0.35704*height), control2: CGPoint(x: 0.26613*width, y: 0.2407*height))
        path.addCurve(to: CGPoint(x: 0.42105*width, y: 0.0025*height), control1: CGPoint(x: 0.32245*width, y: 0.0625*height), control2: CGPoint(x: 0.36119*width, y: 0.0025*height))
        path.closeSubpath()
        
        
        return path
    }
}


