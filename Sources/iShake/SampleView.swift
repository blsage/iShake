//
//  SampleView.swift
//  iShake
//
//  Created by Ben Sage on 3/31/25.
//

import SwiftUI

struct SampleView: View {
    @State private var shakeTrigger = false

    var body: some View {
        VStack {
            Button("Tap Me") {
                shakeTrigger.toggle()
            }
            Text("Shake me")
                .shake(on: shakeTrigger)
        }
        .animation(.default, value: shakeTrigger)
        .padding()
    }
}

struct SampleView_Previews: PreviewProvider {
    static var previews: some View {
        SampleView()
    }
}
