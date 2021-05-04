//
//  ContentView.swift
//  SwiftUIAccessibility
//
//  Created by Ndayisenga Jean Claude on 04/05/2021.
//

import SwiftUI

struct ContentView: View {
    
    @State var selectedNumber: Int = 1
    
    var body: some View {
        NavigationView {
            VStack {
                HStack {
                    Text("1")
                        .padding()
                    Text("2")
                        .padding()
                    Text("3")
                        .padding()
                    Text("4")
                        .padding()
                    Text("5")
                        .padding()
                    Text("6")
                        .padding()
                }
                .accessibilityElement()
                .accessibilityLabel(Text("Numbers Row"))
                .accessibilityValue(Text(String(self.selectedNumber)))
                .accessibilityAdjustableAction { direction in
                    switch direction {
                    case .increment:
                        self.selectedNumber += 1
                    case .decrement:
                        guard self.selectedNumber > 1 else {
                            return
                        }
                        self.selectedNumber -= 1
                    @unknown default:
                        break
                    }
                }
                .navigationTitle("SwiftUI Accessibility")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
