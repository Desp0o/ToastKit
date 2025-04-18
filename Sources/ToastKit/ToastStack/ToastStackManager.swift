//
//  ToastStackManager.swift
//  ToastKit
//
//  Created by Despo on 18.04.25.
//
import SwiftUI

@available(macOS 14.0, *)
@available(iOS 17, *)

public class ToastStackManager: ObservableObject {
  @Published var toasts: [ToastItemModel] = []
  
  public init() { }
  
  @MainActor public func show(title: String, toastColor: ToastColorTypes, autoDisappearDuration: TimeInterval = 2.0) {
    let toast = ToastItemModel(
      title: title,
      toastColor: toastColor,
      autoDisappearDuration: autoDisappearDuration
    )
    
    toasts.insert(toast, at: 0)
    
    Task {
      try await Task.sleep(nanoseconds: UInt64(autoDisappearDuration * 1_000_000_000))
      self.removeToast(toast)
    }
  }
  
  func removeToast(_ toast: ToastItemModel) {
    toasts.removeAll { $0.id == toast.id }
  }
}
