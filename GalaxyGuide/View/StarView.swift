//
//  StarView.swift
//  GalaxyGuide
//
//  Created by Pham on 6/19/23.
//

import SwiftUI

struct StarView: View {
      @State private var isOn: Bool = false
      
    var body: some View {
        Circle()
                .fill(Color.white)
                .frame(width: 2, height: 2)
                .opacity(isOn ? 1 : 0.5)
                .animation(Animation.easeInOut(duration: 3).repeatForever(autoreverses: true), value: isOn)
                .onAppear {
                      isOn.toggle()
                      DispatchQueue.main.asyncAfter(deadline: .now() + Double.random(in: 0...2)) {
                            isOn.toggle()
                      }
                }
                .position(x: CGFloat.random(in: 0...UIScreen.main.bounds.width),
                                      y: CGFloat.random(in: 0...UIScreen.main.bounds.height))
    }
}

struct StarView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
