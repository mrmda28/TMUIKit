//
//  PrimaryButtonStyle.swift
//  
//
//  Created by Dmitry Maslennikov on 03.09.2023.
//

import SwiftUI

public struct PrimaryButtonStyle: ButtonStyle {
    
    @Environment(\.isEnabled) private var isEnabled: Bool
    
    public init() { }
    
    public func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .frame(
                maxWidth: .infinity,
                maxHeight: .infinity
            )
            .font(
                .system(size: 14.0)
            )
            .foregroundColor(.white)
            .background(
                isEnabled ? (configuration.isPressed ? TMColor.primaryHighlighted.swiftUIColor : TMColor.primary.swiftUIColor) : TMColor.primaryDisabled.swiftUIColor
            )
            .cornerRadius(8.0)
    }
}
