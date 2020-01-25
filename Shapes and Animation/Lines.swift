//
//  Lines.swift
//  Shapes and Animation
//
//  Created by Vasilis Green on 25/1/20.
//  Copyright © 2020 Vasilis Green. All rights reserved.
//

import SwiftUI

struct Lines: View {
  //    Create custom shapes or drawings
  var body: some View {
    GeometryReader { geometry in
      Path { path in
        // first move to a particular point on the screen
        // specifing an x and y
        // then add line specifing x and y
        
        let width = geometry.size.width
        let height = geometry.size.height
        
        path.move(to: CGPoint(x: 0, y:0))
        path.addLine(to: CGPoint(x: width * 0.6, y: height / 2))
        path.addLine(to: CGPoint(x: width, y: 0))
        
        path.move(to: CGPoint(x: width, y: height))
        path.addLine(to: CGPoint(x: width * 0.4, y: height / 2))
        path.addLine(to: CGPoint(x: 0, y: height))
        path.addLine(to: CGPoint(x: width, y: height))
        
        // here we can use fill or stroke to make the outline or fill it
      }.fill(LinearGradient(gradient: .init(colors: [.purple, .blue, .red, .orange, .yellow]), startPoint: .top, endPoint: .bottom))
      
    }
  }
}

struct Lines_Previews: PreviewProvider {
  static var previews: some View {
    Lines()
  }
}
