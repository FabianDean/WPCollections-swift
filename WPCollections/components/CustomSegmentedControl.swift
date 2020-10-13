//
//  CustomSegmentedControl.swift
//  WPCollections
//
//  Created by Fabian Flores on 10/13/20.
//

import SwiftUI

struct CustomSegmentedControl: View {
    public var name: String
    @Binding var selectorIndex: Int
    public var controls: [String]
    
    var body: some View {
        Picker(name, selection: $selectorIndex) {
            ForEach(0 ..< controls.count) { index in
                Text(self.controls[index]).tag(index)
            }
        }
            .pickerStyle(SegmentedPickerStyle())
    }
}

struct CustomSegmentedControl_Previews: PreviewProvider {
    @State static var mockIndex = 0
    static var previews: some View {
        CustomSegmentedControl(name: "Results", selectorIndex: $mockIndex, controls: ["Themes", "Plugins"])
    }
}
