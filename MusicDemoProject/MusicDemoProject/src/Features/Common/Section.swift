//
//  Section.swift
//  MusicDemoProject
//
//  Created by Gary on 11/7/23.
//

import SwiftUI

struct Section<Content: View, Label: View>: View {
    @ViewBuilder var content: Content
    @ViewBuilder var label: Label
    
    var body: some View {
        VStack(alignment: .leading) {
            label
                .font(.title2.bold())
            content
        }
        .padding(.top, halfSpacing)
        .padding(.bottom, sectionSpacing)
        .overlay(alignment: .bottom) {
            Divider().padding(.horizontal, hMargin)
        }
    }
    
    var halfSpacing: CGFloat {
        sectionSpacing / 2.0
    }
    
    var sectionSpacing: CGFloat {
        20.0
    }
    
    var hMargin: CGFloat {
        20.0
    }
}

#Preview {
    Section {
        Text("Header")
    } label: {
        Text("Content")
    }
    
}
