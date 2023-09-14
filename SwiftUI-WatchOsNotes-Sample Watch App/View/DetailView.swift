//
//  DetailView.swift
//  SwiftUI-WatchOsNotes-Sample Watch App
//
//  Created by ekayaint on 14.09.2023.
//

import SwiftUI

struct DetailView: View {
    let note: Note
    let count: Int
    let index: Int
    @State private var isCreditsPresented: Bool = false
    
    var body: some View {
        VStack {
            HeaderView()
            
            Spacer()
            
            ScrollView(.vertical) {
                Text(note.text)
                    .font(.title3)
                    .fontWeight(.semibold)
                    .multilineTextAlignment(.center)
            } //: Scroll
            
            Spacer()
            
            HStack(alignment: .center) {
                Image(systemName: "gear")
                    .imageScale(.large)
                Spacer()
                Text("\(count) / \(index + 1)")
                Spacer()
                Image(systemName: "info.circle")
                    .imageScale(.large)
                    .onTapGesture {
                        isCreditsPresented.toggle()
                    }
            } //: HStack
            .foregroundColor(.secondary)
        } //: VStack
        .padding(3)
        
    }
}

struct DetailView_Previews: PreviewProvider {
    static var sampleData: Note = Note(id: UUID(), text: "Hello, World!")
    static var previews: some View {
        DetailView(note: sampleData, count: 5, index: 1)
    }
}
