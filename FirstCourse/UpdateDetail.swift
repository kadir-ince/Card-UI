//
//  UpdateDetail.swift
//  FirstCourse
//
//  Created by Kadir on 6.08.2020.
//  Copyright © 2020 Kadir. All rights reserved.
//

import SwiftUI

struct UpdateDetail: View {
    var update:Update = updateData[0]
    var body: some View {
        List {
            VStack{
                Image(update.image)
                .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(maxWidth:.infinity)
                Text(update.text)
                    .frame(maxWidth:.infinity, alignment: .leading)
            }
            .navigationBarTitle(update.title)
        }
        .listStyle(PlainListStyle())
    }
}

struct UpdateDetail_Previews: PreviewProvider {
    static var previews: some View {
        UpdateDetail()
    }
}
