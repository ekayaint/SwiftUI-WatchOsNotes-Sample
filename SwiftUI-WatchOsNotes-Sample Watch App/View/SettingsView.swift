//
//  SettingsView.swift
//  SwiftUI-WatchOsNotes-Sample Watch App
//
//  Created by ekayaint on 15.09.2023.
//

import SwiftUI

struct SettingsView: View {
    @AppStorage("lineCount") var lineCount = 1
    @State private var lineValue: Float = 1.0
    
    func update() {
        lineCount = Int(lineValue)
    }
    
    var body: some View {
        VStack(spacing: 8) {
            HeaderView(title: "Settings")
            Text("Lines: \(lineCount)".uppercased())
                .fontWeight(.bold)
            Slider(value: Binding(get: {lineValue}, set: {(newValue) in
                lineValue = newValue
                self.update()
            }), in: 1...4, step: 1)
                .accentColor(.accentColor)
        } //: VStack
        .onAppear {
            lineValue = Float(lineCount)
        }
        
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
