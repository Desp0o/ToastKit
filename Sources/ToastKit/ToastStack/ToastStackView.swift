//
//  ToastStackView.swift
//  ToastKit
//
//  Created by Despo on 18.04.25.
//

import SwiftUI

@available(macOS 14.0, *)
@available(iOS 17, *)
struct ToastStackView: View {
  @StateObject var vm: ToastStackManager
  let transitionType: AnyTransition
  
  init(
    vm: ToastStackManager,
    transitionType: AnyTransition = .move(edge: .top).combined(with: .opacity)
  ) {
    _vm = StateObject(wrappedValue: vm)
    self.transitionType = transitionType
  }
  
  var body: some View {
    VStack {
      ForEach(vm.toasts, id: \.id) { toast in
        ZStack {
          CustomToast(
            isVisible: .constant(true),
            title: toast.title,
            toastColor: toast.toastColor,
            isStackMaxHeight: toast.isStackMaxHeight
          )
        }
        .transition(transitionType)
      }
    }
    .frame(maxWidth: .infinity, maxHeight: .infinity,alignment: .top)
    .animation(.bouncy, value: vm.toasts)
  }
}
