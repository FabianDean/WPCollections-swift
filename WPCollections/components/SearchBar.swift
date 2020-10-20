//
//  SearchBar.swift
//  WPCollections
//
//  Created by Fabian Flores on 10/12/20.
//

import SwiftUI

struct SearchBar: View {
    @Environment(\.colorScheme) var colorScheme
    @Binding var text: String
    public var placeholder: String
    public var action: () -> Void

    var backgroundColor: Color {
      if colorScheme == .dark {
           return Color(.systemGray5)
       } else {
           return Color(.systemGray6)
       }
    }
    
    var body: some View {
        HStack {
            Image(systemName: "magnifyingglass")
                .foregroundColor(.secondary)
            TextField(placeholder, text: $text, onCommit: action)
            if text != "" {
                Image(systemName: "xmark.circle.fill")
                    .imageScale(.small)
                    .foregroundColor(Color(.systemGray3))
                    .padding(3)
                    .onTapGesture {
                        withAnimation {
                            self.text = ""
                          }
                    }
            }
        }
            .padding(10)
            .background(Color(.systemGray6))
            .cornerRadius(12)
            .padding(.vertical, 10)
    }
}

// extension for keyboard to dismiss
extension UIApplication {
    func endEditing() {
        sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}

struct SearchBar_Previews: PreviewProvider {
    @State static var test = ""
    static var previews: some View {
        SearchBar( text: $test, placeholder: "Search", action: {} )
    }
}
