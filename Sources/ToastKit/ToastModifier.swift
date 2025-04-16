//
//  ToastModifier.swift
//  ToastKit
//
//  Created by Despo on 16.04.25.
//

import SwiftUI

@available(macOS 14.0, *)
@available(iOS 17.0, *)
public struct ToastModifier: ViewModifier {
  @Binding var isVisible: Bool
  let toast: CustomToast
  
  public func body(content: Content) -> some View {
    content
      .overlay {
        toast
      }
  }
}

