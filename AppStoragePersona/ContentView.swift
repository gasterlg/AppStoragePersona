//
//  ContentView.swift
//  AppStoragePersona
//
//  Created by Luca on 1/18/22.
//

import SwiftUI

struct ContentView: View {

    @State private var nome = ""
    @AppStorage("persona") var persona = ""

    var body: some View {
        VStack(spacing: 20) {
            TextField("Inserisci nome", text: $nome)
                .multilineTextAlignment(.center)
                .frame(maxWidth: 200)
            Button("Salva nome") {
                persona = nome
            }
            Text("Persona salvata: \(persona)")
        }
        .frame(width: 400, height: 100)
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
