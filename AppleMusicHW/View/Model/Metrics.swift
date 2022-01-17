//
//  Metrics.swift
//  AppleMusicHW
//
//  Created by a.kravcov on 11.01.2022.
//

import Foundation
import SwiftUI

enum Padding {
    // MARK: - Padding Search view
    static let searchViewPaddingTopTextSearch: CGFloat = 10
    static let searchViewPaddingTopDataText: CGFloat = 100
    static let searchViewPaddingLeading: CGFloat = 12
    static let searchViewPaddingBottomDataText: CGFloat = 0
    static let searchViewPaddingTrailing: CGFloat = 12
    
    // MARK: - Padding SearchDetail view
    static let searchDetailViewPaddingTopDivider: CGFloat = 10
    static let searchDetailViewPaddingLeadingText: CGFloat = 64
    
    // MARK: - Padding SearchViewCell
    static let searchViewCellPaddingLeadingDivider: CGFloat = 14
    static let searchViewCellPaddingLeading: CGFloat = 6
    
    // MARK: - Padding Portret view
    static let portretViewPaddingVertical: CGFloat = 30
    
    // MARK: - Padding MiddleSection view
    static let middleSectionViewTextPaddingTrailing: CGFloat = 130
    static let middleSectionViewTextPaddingLeading: CGFloat = 130
    static let middleSectionViewCirclePaddingTrailing: CGFloat = 330
}

enum Size {
    // MARK: - Search view
    static let searchViewFrameSizeWidth: CGFloat = 170
    static let searchViewFrameSizeHeight: CGFloat = 135
    
    // MARK: - SearchDetail view
    static let searchDetailViewFrameSizeHeight: CGFloat = 340
    
    // MARK: - SearchDetailList view
    static let searchDetailListViewGridSize: CGFloat = 320
    static let searchDetailListViewImageFrameWidth: CGFloat = 380
    
    // MARK: - SearchDetailStation view
    static let searchDetailStationViewGridSpacing: CGFloat = 10
    static let searchDetailStationViewImageFrameWidth: CGFloat = 150
    static let searchDetailStationViewImageFrameHeight: CGFloat = 150
    
    // MARK: - Radius
    static let radius6: CGFloat = 6
    static let radius15: CGFloat = 15
    static let radius20: CGFloat = 20
    
    // MARK: - MediaPlayer view
    static let mediaPlayerViewMaxHeight: CGFloat = 70
    static let mediaPlayerViewOffsetY: CGFloat = -48
    
    // MARK: - Portret view
    static let portretViewCapsuleFrameWidth: CGFloat = 60
    static let portretViewCapsuleFrameHeight: CGFloat = 6
    static let portretViewImageFrameWidth: CGFloat = 55
    static let portretViewImageFrameHeight: CGFloat = 55
    
    // MARK: - SongText view
    static let songTextViewFrameWidth: CGFloat = 170
    
    // MARK: - BottomSection view
    static let bottomSectionImageFrameWidth: CGFloat = 23
    static let bottomSectionImageFrameHeight: CGFloat = 23
    
    // MARK: - MiddleSection view
    static let middleSectionViewCircleFrameWidth: CGFloat = 7
    static let middleSectionViewCircleFrameHeight: CGFloat = 10
    static let middleSectionViewCapsuleWidth: CGFloat = 330
    static let middleSectionViewCapsuleHeight: CGFloat = 2
    static let middleSectionImageBackWidth: CGFloat = 45
    static let middleSectionImageBackHeight: CGFloat = 25
    static let middleSectionViewImagePlayWidth: CGFloat = 35
    static let middleSectionViewImagePlayHeight: CGFloat = 40
    static let middleSectionViewImageForwardWidth: CGFloat = 45
    static let middleSectionViewImageForwardHeight: CGFloat = 25
}

enum Animation {
    // MARK: - Animation
    static let response: CGFloat = 0.5
    static let dampingFraction: CGFloat = 0.95
    static let blendDuration: CGFloat = 0.95
}

enum StackSpacing {
    // MARK: - HStack
    static let Hspacing10: CGFloat = 10
    static let Hspacing15: CGFloat = 15
    // MARK: - VStack
    static let Vspacing8: CGFloat = 8
    static let Vspacing15: CGFloat = 8
}

enum FontSize {
    //MARK: - FontSize
    static let fontSize12: CGFloat = 12
    static let fontSize20: CGFloat = 20
    static let fontSize22: CGFloat = 22
}
