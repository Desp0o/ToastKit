//
//  ToastTransitionType.swift
//  ToastKit
//
//  Created by Despo on 15.04.25.
//

import SwiftUI

@available(macOS 14.0, *)
@available(iOS 17, *)
public enum ToastTransitionType {
  case fade
  case scale
  case slide
  case move(edge: Edge)
  case custom(AnyTransition)
}

@available(macOS 14.0, *)
@available(iOS 17, *)
public enum ToastColorTypes {
  case success
  case warning
  case error
  case info
  case custom(Color)
  
  var value: Color {
    switch self {
    case .success:
      return .green
    case .warning:
      return .yellow
    case .error:
      return .red
    case .info:
      return .blue
    case .custom(let color):
      return color
    }
  }
}

@available(macOS 14.0, *)
@available(iOS 17, *)
public enum HorizontalDirection {
  case leading
  case trailing
  
  var value: Edge {
    switch self {
    case .leading:
      return .leading
    case .trailing:
      return .trailing
    }
  }
}

@available(macOS 14.0, *)
@available(iOS 17, *)
public enum VerticalDirection {
  case top
  case bottom
  
  var value: Alignment {
    switch self {
    case .top:
      return .top
    case .bottom:
      return .bottom
    }
  }
}
