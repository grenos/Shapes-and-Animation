//
//  ContentView.swift
//  Shapes and Animation
//
//  Created by Vasilis Green on 25/1/20.
//  Copyright © 2020 Vasilis Green. All rights reserved.
//

import SwiftUI

struct ContentView: View {
  
  @State var multiplyer = 0.0
  @State var show = false
  
  var body: some View {
    
    VStack {
      Circle().fill(LinearGradient(gradient: .init(colors: [.purple, .blue, .red, .orange, .yellow]), startPoint: .top, endPoint: .bottom))
        .overlay(
          Circle().stroke(lineWidth: 20).foregroundColor(.green)
        ).shadow(radius: 50).padding(10)
        .rotationEffect(.degrees(180 * multiplyer))
      
      if show {
        Circle().fill(LinearGradient(gradient: .init(colors: [.purple, .blue, .red, .orange, .yellow]), startPoint: .top, endPoint: .bottom))
              .overlay(
                Circle().stroke(lineWidth: 20).foregroundColor(.green)
            ).shadow(radius: 50).padding(10)
          .transition(.slide)
      }
      
      Circle().fill(LinearGradient(gradient: .init(colors: [.purple, .blue, .red, .orange, .yellow]), startPoint: .top, endPoint: .bottom))
            .overlay(
              Circle().stroke(lineWidth: 20).foregroundColor(.green)
          ).shadow(radius: 50).padding(10)
            .rotationEffect(.degrees(180 * multiplyer))
      
      Button(action: {
        withAnimation{
          self.multiplyer += 1
        }
      }){
        Text("Animate").rotationEffect(.degrees(180 * multiplyer))
        // Text("Animate").rotationEffect(.degrees(180 * multiplyer)).animation(.spring(response: 0.3))
      }
      
      Button(action: {
          withAnimation{
            self.show.toggle()
          }
        }){
          Text(show ? "Show" : "Hide")
          // Text("Animate").rotationEffect(.degrees(180 * multiplyer)).animation(.spring(response: 0.3))
        }
      
      
    }.padding(50)
    
    //      Circle()
    //      Square()
    //      Capsule()
    //      Ellipsse()
    //      OffsetShape()
    //      Path()
    //      Rectangle()
    //      RotatedShape()
    //      RoundedRectangle()
    //      ScaledShape()
    //      TransformedShape()
    
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
