//
//  File.swift
//  ToastKit
//
//  Created by Despo on 15.04.25.
//

import SwiftUI

@available(macOS 14.0, *)
@available(iOS 17.0, *)

public extension View {
  @ViewBuilder func `if`<Content: View>(_ condition: Bool, transform: (Self) -> Content) -> some View {
    if condition {
      transform(self)
    } else {
      self
    }
  }
}

@available(macOS 14.0, *)
@available(iOS 17, *)
public extension View {
  func toast(
    isVisible: Binding<Bool>,
    title: String,
    toastColor: ToastColorTypes = .success,
    transitionType: ToastTransitionType = .move(edge: .top),
    animation: Animation = .snappy,
    autoDisappear: Bool = true,
    autoDisappearDuration: TimeInterval = 2.0,
    maxWidth: Bool = false,
    subtitle: String = "",
    font: String = "SFProDisplay",
    titleFontSize: CGFloat = 16,
    titleFontWeight: Font.Weight = .semibold,
    titleFontColor: Color = .white,
    subtitleFontSize: CGFloat = 14,
    subtitleFontWeight: Font.Weight = .regular,
    subtitleFontColor: Color = .white,
    multilineTextAlignment: TextAlignment = .center,
    innerHpadding: CGFloat = 30,
    innerVpadding: CGFloat = 10,
    outterHpadding: CGFloat = 20,
    stackAligment: Alignment = .top,
    cornerRadius: CGFloat = 12,
    shadowColor: Color = .black.opacity(0.2),
    shadowRadius: CGFloat = 10,
    shadowX: CGFloat = 0,
    shadowY: CGFloat = 4,
    withIcon: Bool = false,
    iconName: String? = nil,
    iconSize: CGFloat? = nil,
    iconColor: Color? = nil,
    withSfsymbol: Bool = false,
    sfSymbolName: String? = "x.circle",
    sfSymbolSize: CGFloat? = 18,
    sfSymbolColor: Color? = .white,
    layoutDirection: LayoutDirection = .leftToRight,
    closeSFicon: String = "x.circle",
    closeSFiconSize: CGFloat = 18,
    closeSFiconColor: Color = .white
  ) -> some View {
    modifier(
      ToastModifier(
        isVisible: isVisible,
        toast: CustomToast(
          isVisible: isVisible,
          title: title,
          toastColor: toastColor,
          transitionType: transitionType,
          animation: animation,
          autoDisappear: autoDisappear,
          autoDisappearDuration: autoDisappearDuration,
          maxWidth: maxWidth,
          subtitle: subtitle,
          font: font,
          titleFontSize: titleFontSize,
          titleFontWeight: titleFontWeight,
          titleFontColor: titleFontColor,
          subtitleFontSize: subtitleFontSize,
          subtitleFontWeight: subtitleFontWeight,
          subtitleFontColor: subtitleFontColor,
          multilineTextAlignment: multilineTextAlignment,
          innerHpadding: innerHpadding,
          innerVpadding: innerVpadding,
          outterHpadding: outterHpadding,
          stackAligment: stackAligment,
          cornerRadius: cornerRadius,
          shadowColor: shadowColor,
          shadowRadius: shadowRadius,
          shadowX: shadowX,
          shadowY: shadowY,
          withIcon: withIcon,
          iconName: iconName,
          iconSize: iconSize,
          iconColor: iconColor,
          withSfsymbol: withSfsymbol,
          sfSymbolName: sfSymbolName,
          sfSymbolSize: sfSymbolSize,
          sfSymbolColor: sfSymbolColor,
          layoutDirection: layoutDirection,
          closeSFicon: closeSFicon,
          closeSFiconSize: closeSFiconSize,
          closeSFiconColor: closeSFiconColor
        )
      )
    )
  }
}


@available(macOS 14.0, *)
@available(iOS 17, *)
public extension View {
  func successToast(
    isVisible: Binding<Bool>,
    title: String,
    toastColor: ToastColorTypes = .success,
    animation: Animation = .snappy,
    titleFontColor: Color = .white,
    maxWidth: Bool = false
  ) -> some View {
    toast(
      isVisible: isVisible,
      title: title,
      toastColor: toastColor,
      animation: animation,
      maxWidth: maxWidth,
      titleFontColor: titleFontColor
    )
  }
}


@available(macOS 14.0, *)
@available(iOS 17, *)
public extension View {
  func warningToast(
    isVisible: Binding<Bool>,
    title: String,
    toastColor: ToastColorTypes = .warning,
    animation: Animation = .snappy,
    titleFontColor: Color = .white,
    maxWidth: Bool = false
  ) -> some View {
    toast(
      isVisible: isVisible,
      title: title,
      toastColor: toastColor,
      animation: animation,
      maxWidth: maxWidth,
      titleFontColor: titleFontColor
    )
  }
}


@available(macOS 14.0, *)
@available(iOS 17, *)
public extension View {
  func errorToast(
    isVisible: Binding<Bool>,
    title: String,
    toastColor: ToastColorTypes = .error,
    animation: Animation = .snappy,
    titleFontColor: Color = .white,
    maxWidth: Bool = false
  ) -> some View {
    toast(
      isVisible: isVisible,
      title: title,
      toastColor: toastColor,
      animation: animation,
      maxWidth: maxWidth,
      titleFontColor: titleFontColor
    )
  }
}


@available(macOS 14.0, *)
@available(iOS 17, *)
public extension View {
  func bottomToast(
    isVisible: Binding<Bool>,
    title: String,
    toastColor: ToastColorTypes = .success,
    animation: Animation = .snappy,
    titleFontColor: Color = .white,
    maxWidth: Bool = false
  ) -> some View {
    toast(
      isVisible: isVisible,
      title: title,
      toastColor: toastColor,
      transitionType: .move(edge: .bottom),
      animation: animation,
      maxWidth: maxWidth,
      titleFontColor: titleFontColor,
      stackAligment: .bottom
    )
  }
}


@available(macOS 14.0, *)
@available(iOS 17, *)
public extension View {
  func edgeSlideToast(
    isVisible: Binding<Bool>,
    title: String,
    toastColor: ToastColorTypes = .success,
    animation: Animation = .snappy,
    hDirection: HorizontalDirection = .trailing,
    vDirection: VerticalDirection = .top,
    titleFontColor: Color = .white,
    maxWidth: Bool = false
  ) -> some View {
    toast(
      isVisible: isVisible,
      title: title,
      toastColor: toastColor,
      transitionType: .move(edge: hDirection.value),
      animation: animation,
      maxWidth: maxWidth,
      titleFontColor: titleFontColor,
      stackAligment: vDirection.value
    )
  }
}


@available(macOS 14.0, *)
@available(iOS 17, *)
public extension View {
  func infoToast(
    isVisible: Binding<Bool>,
    title: String,
    toastColor: ToastColorTypes = .info,
    animation: Animation = .snappy,
    titleFontColor: Color = .white,
    maxWidth: Bool = false
  ) -> some View {
    toast(
      isVisible: isVisible,
      title: title,
      toastColor: .info,
      animation: animation,
      maxWidth: maxWidth,
      titleFontColor: titleFontColor
    )
  }
}


@available(macOS 14.0, *)
@available(iOS 17, *)
public extension View {
  func toastWithIcon(
    isVisible: Binding<Bool>,
    title: String,
    toastColor: ToastColorTypes = .success,
    iconName: String?,
    iconSize: CGFloat? = 24,
    iconColor: Color? = nil,
    transitionType: ToastTransitionType = .move(edge: .top),
    animation: Animation = .snappy,
    vDirection: VerticalDirection = .top,
    titleFontColor: Color = .white,
    maxWidth: Bool = false,
    layoutDirection: LayoutDirection = .leftToRight
  ) -> some View {
    toast(
      isVisible: isVisible,
      title: title,
      toastColor: toastColor,
      transitionType: transitionType,
      animation: animation,
      maxWidth: maxWidth,
      titleFontColor: titleFontColor,
      stackAligment: vDirection.value,
      withIcon: true,
      iconName: iconName,
      iconSize: iconSize,
      iconColor: iconColor,
      layoutDirection: layoutDirection
    )
  }
}


@available(macOS 14.0, *)
@available(iOS 17, *)
public extension View {
  func toastWithSFSymbol(
    isVisible: Binding<Bool>,
    title: String,
    toastColor: ToastColorTypes = .success,
    titleFontColor: Color = .white,
    sfSymbolName: String?,
    sfSymbolSize: CGFloat? = 24,
    sfSymbolColor: Color? = .white,
    transitionType: ToastTransitionType = .move(edge: .top),
    animation: Animation = .snappy,
    vDirection: VerticalDirection = .top,
    maxWidth: Bool = false,
    layoutDirection: LayoutDirection = .leftToRight
  ) -> some View {
    toast(
      isVisible: isVisible,
      title: title,
      toastColor: toastColor,
      transitionType: transitionType,
      animation: animation,
      maxWidth: maxWidth,
      titleFontColor: titleFontColor,
      stackAligment: vDirection.value,
      withSfsymbol: true,
      sfSymbolName: sfSymbolName,
      sfSymbolSize: sfSymbolSize,
      sfSymbolColor: sfSymbolColor,
      layoutDirection: layoutDirection
    )
  }
}
