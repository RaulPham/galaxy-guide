//
//  PlanetView.swift
//  GalaxyGuide
//
//  Created by Pham on 6/19/23.
//

import SwiftUI

struct PlanetView: View {
      var image: String
      var offsetX: CGFloat
      var offsetY: CGFloat

      var body: some View {
            Image(image)
                  .resizable()
                  .aspectRatio(contentMode: .fit)
                  .frame(width: 100)
                  .offset(x: offsetX, y: offsetY)
                  .onTapGesture {
                              // here you can handle the tap gesture, for example present a detail view
                        print("\(image) was tapped")
                  }
      }
}

struct PlanetView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
