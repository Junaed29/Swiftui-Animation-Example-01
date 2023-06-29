//
//  ExapleThree.swift
//  Swiftui Animation Example 1
//
//  Created by Junaed Muhammad Chowdhury on 29/6/23.
//

import SwiftUI

struct ExampleThree: View {
    //Animation Rule 1
    @State private var animatingButton = false
    
    var body: some View {
        ZStack {
            LinearGradient(colors:  [.blue, .black], startPoint: .topLeading, endPoint: .bottomTrailing)
                .ignoresSafeArea()
            
            VStack {
                Button {
                    withAnimation(.easeInOut(duration: 1).repeatCount(5)) {
                        animatingButton.toggle()
                    }
                } label: {
                    Text("Animate")
                        .bold()
                        .frame(width: 200, height: 50)
                        .foregroundColor(.indigo)
                        .background(LinearGradient(colors: [.mint, .white], startPoint: .bottomLeading, endPoint: .topTrailing))
                        .clipShape(RoundedRectangle(cornerRadius: 20))
                        .shadow(radius: 3)
                        .opacity(animatingButton ? 1.0 : 0.6)
                        .scaleEffect(animatingButton ? 1.5 : 1.0)
                }

            }
        }
    }
}

struct ExapleThree_Previews: PreviewProvider {
    static var previews: some View {
        ExampleThree()
    }
}



//Animation Rule 1
// -------------
//Create A @State var bollean

//Animation Rule 2
// -------------
//Use .withAnimation{} to toggle that bolean

//Animation Rule 3
// -------------
//Use TERNARY Operator to Control Animation

