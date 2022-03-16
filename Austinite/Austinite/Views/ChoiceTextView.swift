//
//  ChoiceTextView.swift
//  Austinite
//
//  Created by Stef Castillo on 2/17/22.
//

import SwiftUI

struct ChoiceTextView: View {
    let choiceText: String
    let accentColor = GameColor.accent //You can delete the accent color from the ContentView//

    var body: some View {
        Text(choiceText)
            .font(.body)
            .bold()
            .multilineTextAlignment(.center)
            .padding()
            .border(GameColor.accent, width:4)

    }
}

struct ChoiceTextView_Previews: PreviewProvider {
    static var previews: some View {
        ChoiceTextView(choiceText: "Choice Text")
    }
}
