//
//  ToastStackView.swift
//  ToastKit
//
//  Created by Despo on 18.04.25.
//

import SwiftUI

@available(macOS 14.0, *)
@available(iOS 17, *)
public struct ToastStackView: View {
  @StateObject var vm: ToastStackManager
  let transitionType: AnyTransition
  let isGlass: Bool
  let glassColor: Color
  
  public init(
    vm: ToastStackManager,
    transitionType: AnyTransition = .move(edge: .top).combined(with: .opacity),
    isGlass: Bool = false,
    glassColor: Color = .clear
  ) {
    _vm = StateObject(wrappedValue: vm)
    self.transitionType = transitionType
    self.isGlass = isGlass
    self.glassColor = glassColor
  }
  
  public var body: some View {
    VStack {
      ForEach(vm.toasts, id: \.id) { toast in
        ZStack {
          if #available(iOS 26.0, *), isGlass {
            CustomToast(
              isVisible: .constant(true),
              title: toast.title,
              toastColor: toast.toastColor,
              isStackMaxHeight: toast.isStackMaxHeight,
              isGlass: isGlass,
              glassColor: glassColor
            )
          } else {
            CustomToast(
              isVisible: .constant(true),
              title: toast.title,
              toastColor: toast.toastColor,
              isStackMaxHeight: toast.isStackMaxHeight
            )
          }
        }
        .transition(transitionType)
      }
    }
    .frame(maxWidth: .infinity, maxHeight: .infinity,alignment: .top)
    .animation(.bouncy, value: vm.toasts)
  }
}
