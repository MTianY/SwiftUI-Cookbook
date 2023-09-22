//
//  MyAlignmentView.swift
//  SwiftUITest
//
//  Created by TY on 9/20/23.
//

import SwiftUI

struct CircleAlignment: AlignmentID {
    static func defaultValue(in context: ViewDimensions) -> CGFloat {
        return context[VerticalAlignment.center]
    }
}

extension VerticalAlignment {
    static let circleAlignment = VerticalAlignment(CircleAlignment.self)
}

struct MyAlignmentView: View {
    var body: some View {
        HStack(alignment: .circleAlignment) {
            ForEach(0..<5) { index in
                Circle()
                    .frame(width: 50, height: 50)
                    .alignmentGuide(.circleAlignment) { _ in
                        CGFloat(index * 20)
                    }
            }
        }
        .frame(height: 200)
        .border(Color.black, width: 1)
    }
}

struct MyAlignmentView_Previews: PreviewProvider {
    static var previews: some View {
        MyAlignmentView()
    }
}
