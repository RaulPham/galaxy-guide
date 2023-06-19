//
//  ContentView.swift
//  GalaxyGuide
//
//  Created by Pham on 6/19/23.
//

import SwiftUI

struct ContentView: View {
      @State private var isOn: Bool = false
      
    var body: some View {
          ZStack {
                Color.black.edgesIgnoringSafeArea(.all)
                ForEach(0..<100) { _ in
                      StarView()
                }
                
                PlanetView(image: "the_sun", offsetX: 50, offsetY: -100)
          }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
