//
//  ListRow.swift
//  iOS7-HW23-Kholodkov Denis
//
//  Created by Денис Холодков on 01.12.2022.
//

import SwiftUI

struct ListRow: View {
    
    let items: Model
    @State private var isShowed = false
    
    var body: some View {
        HStack {
            ZStack {
                Button(action: { isShowed.toggle() }, label: {
                    Image(systemName: Metric.imageCircle)
                    .foregroundColor(.gray)})
                if isShowed {
                    Image(systemName: Metric.checkRow)
                        .foregroundColor(.pink)
                        .background(.white)
                        .cornerRadius(10)
                }
            }
            Image(systemName: items.icon)
                .foregroundColor(.red)
            Text(items.name)
                .font(.title3)
        }
    }
}

struct ListRow_Previews: PreviewProvider {
    static var previews: some View {
        ListRow(items: Model.model[0])
    }
}

extension ListRow {
    enum Metric {
        static let imageCircle = "circle"
        static let checkRow = "checkmark.circle.fill"
    }
}
