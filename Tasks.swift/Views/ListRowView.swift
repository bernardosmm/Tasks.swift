//
//  ListRowView.swift
//  Tasks.swift
//
//  Created by User on 22/09/23.
//

import SwiftUI

struct ListRowView: View {
    
    let title: String
    
    var body: some View {
        HStack {
            Image (systemName: "checkmark.circle")
            Text (title)
            Spacer()
        }
    }
}

struct ListRowView_Previews: PreviewProvider {
    static var previews: some View {
        ListRowView(title: "this is the first title")
    }
}
