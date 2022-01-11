//
//  SearchViewCell.swift
//  AppleMusicHW
//
//  Created by a.kravcov on 28.12.2021.
//

import SwiftUI

struct SearchViewCell: View {
    let track: SearchModel
    var imageWidth: CGFloat = 100
    
    var body: some View {
        VStack(alignment: .leading, spacing: StackSpacing.Vspacing8) {
            HStack {
                Image(track.imageName)
                    .resizable()
                    .scaledToFit()
                    .clipShape(RoundedRectangle(cornerRadius: Size.radius6))
                    .frame(width: imageWidth, height: imageWidth)
            VStack(alignment: .leading) {
                    Text(track.title)
                        .font(.title3)
                   
                if let subTitle = track.subTitle {
                    Text(subTitle)
                        .foregroundColor(.secondary)
                    }
                }
            .padding(.leading, Padding.searchViewCellPaddingLeading)
            }
            Divider()
                .padding(.leading, imageWidth + Padding.searchViewCellPaddingLeadingDivider)
        }
    }
}
