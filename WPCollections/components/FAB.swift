//
//  FAB.swift
//  WPCollections
//
//  Created by Fabian Flores on 10/12/20.
//

import SwiftUI
import ModalView

enum ALIGNMENT {
    case left, right
}

struct FAB<Content: View>: View {
    public var title: String
    public var view: Content
    public var icon: String
    public var align: ALIGNMENT

    @ViewBuilder
    var body: some View {
        VStack {
            Spacer()
            HStack {
                if (align == .right) {
                    Spacer()
                }
                ModalLink(destination: {dismiss in NewModalView(title: self.title, view: self.view, dismiss: dismiss)}) {
                    Image(systemName: icon)
                        .scaleEffect(1.3, anchor: .center)
                        .padding(EdgeInsets.init(top: 17.0, leading: 15.0, bottom: 17.0, trailing: 15.0))
                        .foregroundColor(.white)
                }
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
        FAB(title: "Library", view: SearchView(), icon: "list.bullet", align: ALIGNMENT.left)
    }
}
