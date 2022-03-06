//
//  ContentView.swift
//  MusicByLocation
//
//  Created by Harry Sibson on 01/03/2022.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var state = StateController()
    
    var body: some View {
        VStack{
            Text("Your location: \(state.lastKnownLocation)")
            Text("Relevant music to your location: \(state.artistsByLocation)")
                .padding()
            Spacer()
            Button("Find Music", action: {
                state.findMusic()
            })
        }.onAppear(perform: {
            state.requestAccessToLocationData()
        })
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
