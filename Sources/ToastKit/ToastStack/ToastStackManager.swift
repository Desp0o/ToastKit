//
//  ToastStackManager.swift
//  ToastKit
//
//  Created by Despo on 18.04.25.
//
import SwiftUI

@available(macOS 14.0, *)
@available(iOS 17, *)
public struct ToastItemModel: Identifiable, Equatable {
  public let id = UUID()
  let title: String
  let toastColor: ToastColorTypes
  let autoDisappearDuration: TimeInterval
  let isStackMaxHeight: Bool = false
  
  public static func == (lhs: ToastItemModel, rhs: ToastItemModel) -> Bool {
    return lhs.id == rhs.id
  }
}

@available(macOS 14.0, *)
@available(iOS 17, *)

@MainActor
public class ToastStackManager: ObservableObject {
  @Published var toasts: [ToastItemModel] = []
  
  public init() { }
  
  public func show(title: String, toastColor: ToastColorTypes, autoDisappearDuration: TimeInterval = 2.0) {
    let toast = ToastItemModel(
      title: title,
      toastColor: toastColor,
      autoDisappearDuration: autoDisappearDuration
    )
    
    toasts.insert(toast, at: 0)
    
    DispatchQueue.main.asyncAfter(deadline: .now() + autoDisappearDuration) { [weak self] in
      self?.removeToast(toast)
    }
  }
  
  private func removeToast(_ toast: ToastItemModel) {
    toasts.removeAll { $0.id == toast.id }
  }
}
