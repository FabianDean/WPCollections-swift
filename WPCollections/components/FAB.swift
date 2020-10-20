//
//  FAB.swift
//  WPCollections
//
//  Created by Fabian Flores on 10/12/20.
//

import SwiftUI

enum ALIGNMENT {
    case left, right
}

struct FAB<Content: View>: View {
    public var align: ALIGNMENT
    public var button: () -> Content
    
    @ViewBuilder
    var body: some View {
        VStack {
            Spacer()
            HStack {
                if (align == .right) {
                    Spacer()
                }
                button()
                .background(Color.blue)
                .cornerRadius(30)
                .padding(EdgeInsets.init(top: 0, leading: self.align == .left ? 20 : 0, bottom: 0, trailing: self.align == .right ? 20 : 0))
                if (align == .left) {
                    Spacer()
                }
            }
        }
    }
}

struct FABView_Previews: PreviewProvider {
    static var previews: some View {
        FAB(align: ALIGNMENT.left) {
            Button(action: {}, label: {
                Image("plus")
            })
        }
    }
}
