//
//  ToastItemModel.swift
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
