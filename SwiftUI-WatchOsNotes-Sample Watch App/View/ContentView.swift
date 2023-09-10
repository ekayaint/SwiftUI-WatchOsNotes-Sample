//
//  ContentView.swift
//  SwiftUI-WatchOsNotes-Sample Watch App
//
//  Created by ekayaint on 10.09.2023.
//

import SwiftUI

struct ContentView: View {
    @State private var notes: [Note] = [Note]()
    @State private var text: String = ""
    
    var body: some View {
         
        VStack {
            HStack(alignment: .center, spacing: 6) {
                TextField("Add New Note", text: $text)
                Button {
                    // Action
                } label: {
                    Image(systemName: "plus.circle")
                        .font(.system(size: 42, weight: .semibold))
                }
                .fixedSize()
                .buttonStyle(PlainButtonStyle())
                .foregroundColor(.accentColor)
                //.buttonStyle(BorderedButtonStyle(tint: .accentColor))
            } //: HStack
            Spacer()
        } //: VStack
        .navigationTitle("Notes")
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
