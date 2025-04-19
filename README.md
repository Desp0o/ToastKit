
![ToastKit Logo Design-2](https://github.com/user-attachments/assets/5935dd17-029d-488b-b7e3-2e767cc2b9e1)

# ToastKit
ToastKit is a lightweight and fully customizable Swift package that helps you display informative toast messages in your app. It’s easy to use, supports 
various built-in toast styles like success, warning, info, error, with icons.... and also allows full customization for your specific needs.

You can quickly use ready-made toasts or create your own custom toast view with complete control over layout, colors, animations, icons, and more.


![Static Badge](https://img.shields.io/badge/Swit-6.0-orange) ![Static Badge](https://img.shields.io/badge/iOS-17.0%2B-white) ![Static Badge](https://img.shields.io/badge/Version%20-%201.3.0-skyblue) ![Static Badge](https://img.shields.io/badge/LICENSE-MIT-yellow) ![Static Badge](https://img.shields.io/badge/SPM-SUCCESS-green)



## Features 🚀
- Full Customization
- Max Width Support 
- Custom Icons & SF Symbols 
- Auto Dismiss 
- Transition Types 
- Flexible Layout Direction
- Text Styling Options 
- Shadow Customization 
- Corner Radius Control 
- Optional Subtitle 
- Adaptive Stack Alignment 
- Smooth Animations 
- Manual Close Button 
- Responsive Design 

---------

### Success / Warning / Error/ Info - Toasts
![simples](https://github.com/user-attachments/assets/f3af5442-fd4b-4ab3-a01d-9bf95d374656)

##### simple toast
```swift
 VStack {
      
    }
    .frame(maxWidth: .infinity, maxHeight: .infinity)
    .successToast(isVisible: $isVisible, title: "Success")
    .warningToast(isVisible: $isVisible, title: "Warning")
    .errorToast(isVisible: $isVisible, title: "Error")
    .infoToast(isVisible: $isVisible, title: "Info")
```

##### with full parameters
```swift
VStack {
      
    }
    .successToast(isVisible: $isVisible, title: "success full width", toastColor: .success, animation: .snappy, titleFontColor: .white, maxWidth: false)
    .warningToast(isVisible: $isVisible, title: "warning full width", toastColor: .warning, animation: .snappy, titleFontColor: .white, maxWidth: false)
    .errorToast(isVisible: $isVisible, title: "error full width", toastColor: .error, animation: .snappy, titleFontColor: .white, maxWidth: false)
    .infoToast(isVisible: $isVisible, title: "info full width", toastColor: .info, animation: .snappy, titleFontColor: .white, maxWidth: false)
```

##### Configuration ⚙️
| Parameter               | Type                   | Default Value           | Description                         |
| :----------------------| :--------------------- | :---------------------- | :---------------------------------- |
| `isVisible `           | Binding<Bool>          | —                       | Binding to control visibility.      |
| `title`                | String                 | —                       | The main message displayed in the toast. |
| `toastColor`           | ToastColorTypes        | .success / .warning / .error / .info                | The visual style or color theme of the toast .            |
| `animation`            | Animation              | .snappy                 | Animation used to present and dismiss the toast.                     |
| `titleFontColor`       | Color                  | .white                  | The color of the toast message text.          |
| `maxWidth`             | Bool                   | false                   | Whether the toast should stretch to the maximum width.             |

---------
### Bottom - Toasts
![bottom](https://github.com/user-attachments/assets/c9f086f6-13d4-42be-a008-ab1c81937674)

##### simple toast
```swift
 VStack {
      
    }
    .bottomToast(isVisible: $isVisible, title: "bottom")
```

##### with full parameters
```swift
 VStack {
      
    }
    .bottomToast(
      isVisible: $isVisible,
      title: "bottom",
      toastColor: .custom(.indigo),
      animation: .bouncy,
      titleFontColor: .white,
      maxWidth: false
    )
```

##### Configuration ⚙️

| Parameter         | Type              | Default Value | Description |
|------------------|-------------------|----------------|-------------|
| `isVisible`       | Binding<Bool>   | —              | Binding to control visibility. |
| `title`           | String          | —              | The main message displayed in the toast. |
| `toastColor`      | ToastColorTypes | .success     | The color type or style of the toast (`.success`, `.error`, `.info`, `.warning`, `.custom(Color)`). |
| `animation`       | Animation       | .snappy      | Animation used to present and dismiss the toast. |
| `titleFontColor`  | Color           | .white       | The color of the toast message text. |
| `maxWidth`        | Bool            | false        | If true, toast stretches to maximum available width. |
----------------


### Edge Slide Toast - Toasts
![slide](https://github.com/user-attachments/assets/4fd902f8-3afe-4b36-8e20-0dfd0a7d4639)

##### simple toast
```swift
 VStack {
      
    }
    .edgeSlideToast(isVisible: $isVisible, title: "slide")
```
##### with full parameters
```swift
 VStack {
      
    }
    .edgeSlideToast(
      isVisible: $isVisible,
      title: "slide",
      toastColor: .info,
      animation: .bouncy,
      hDirection: .leading,
      vDirection: .top,
      titleFontColor: .white,
      maxWidth: false
    )
```
##### Configuration ⚙️

| Parameter         | Type                  | Default Value | Description |
|------------------|-----------------------|----------------|-------------|
| `isVisible`       | Binding<Bool>        | —              | Binding to control visibility. |
| `title`           | String               | —              | The main message displayed in the toast. |
| `toastColor`      | ToastColorTypes      | .success     | The color type or style of the toast (`.success`, `.error`, `.info`, `.warning`, `.custom(Color)`). |
| `animation`       | Animation            | .snappy      | Animation used to present and dismiss the toast. |
| `hDirection`      | HorizontalDirection  | .trailing    | Slide from horizontal edge (`.leading` or `.trailing`). |
| `vDirection`      | VerticalDirection    | .top         | Vertical position of the toast (`.top` or `.bottom`). |
| `titleFontColor`  | Color                | .white       | The color of the toast message text. |
| `maxWidth`        | Bool                 | false        | If `true`, toast stretches to maximum available width. |
----------------

### Toast with SF Symbol
![sf](https://github.com/user-attachments/assets/9c45e226-4193-4252-beb7-7c09b782ce08)

##### simple toast
```swift
 VStack {
      
    }
    .toastWithSFSymbol(
      isVisible: $isVisivble,
      title: "Toast with SF symbol",
      sfSymbolName: "sun.max"
    )
```
##### with full parameters
```swift
 VStack {
      
    }
    .toastWithSFSymbol(
      isVisible: $isVisivble,
      title: "Toast with SF symbol",
      toastColor: .custom(.indigo),
      titleFontColor: .white,
      sfSymbolName: "sun.max",
      sfSymbolSize: 18,
      sfSymbolColor: .black,
      transitionType: .scale,
      animation: .smooth,
      vDirection: .top,
      maxWidth: false,
      layoutDirection: .leftToRight
    )
```
##### Configuration ⚙️

| Parameter          | Type                         | Default Value                  | Description |
|-------------------|------------------------------|--------------------------------|-------------|
| `isVisible`        | Binding<Bool>               | —                              | Binding to control visibility. |
| `title`            | String                      | —                              | The main message displayed in the toast. |
| `toastColor`       | ToastColorTypes             | .success                     | The color type or style of the toast (`.success`, `.error`, `.info`, `.warning`, `.custom(Color)`). |
| `titleFontColor`   | Color                       | .white                       | The color of the toast message text. |
| `sfSymbolName`     | String?                     | nil                          | Optional name of an SF Symbol. |
| `sfSymbolSize`     | CGFloat?                    | 24                          | Size of the SF Symbol icon. |
| `sfSymbolColor`    | Color?                      | .white                       | Color of the SF Symbol icon. |
| `transitionType`   | ToastTransitionType         | .move(edge: .top)            | The transition animation for how the toast appears/disappears. |
| `animation`        | Animation                   | .snappy                      | Animation used to present and dismiss the toast. |
| `vDirection`       | VerticalDirection           | .top                         | Vertical position of the toast (`.top` or `.bottom`). |
| `maxWidth`         | Bool                        | false                       | If `true`, toast takes maximum available width. |
| `layoutDirection`  | LayoutDirection             | .leftToRight                 | Layout direction of content (`.leftToRight` or `.rightToLeft`). |
-----------

### Toast with custom icon or image
![custom](https://github.com/user-attachments/assets/cfb46343-79c0-48f8-847b-c292530fb580)

##### simple toast
```swift
 VStack {
      
    }
    .toastWithIcon(
      isVisible: $isVisivble,
      title: "with custom icon",
      iconName: "swift"
    )
```

##### with full parameters
```swift
 VStack {
      
    }
    .toastWithIcon(
      isVisible: $showWithCustomIconToast,
      title: "with custom icon",
      toastColor: .custom(.orange),
      iconName: "swift",
      iconSize: 18,
      iconColor: nil,
      transitionType: .move(edge: .top),
      animation: .bouncy,
      vDirection: .top,
      titleFontColor: .white,
      maxWidth: false,
      layoutDirection: .leftToRight
    )
```
##### Configuration ⚙️

| Parameter          | Type                         | Default Value                  | Description |
|-------------------|------------------------------|--------------------------------|-------------|
| `isVisible`        | Binding<Bool>             | —                              | Binding to control visibility. |
| `title`            | String                     | —                              | The main message displayed in the toast. |
| `toastColor`       | ToastColorTypes             | .success                   | The color type or style of the toast (`.success`, `.error`, `.info`, `.warning`, `.custom(Color)`). |
| `iconName`         | String?                    | nil                       | Optional name of a custom icon (from asset). |
| `iconSize`         | CGFloat?                   | 24                          | Size of the custom icon. |
| `iconColor`        | Color?                    | .white                     | Color of the custom icon. |
| `transitionType`   | ToastTransitionType         | .move(edge: .top)            | The transition animation for how the toast appears/disappears. |
| `animation`        | Animation                | .snappy                     | Animation used to present and dismiss the toast. |
| `vDirection`       | VerticalDirection           | .top                        | Vertical position of the toast (`.top` or `.bottom`). |
| `titleFontColor`   | Color                       | .white                       | The color of the toast message text. |
| `maxWidth`         | Bool                       | false                      | If `true`, toast takes maximum available width. |
| `layoutDirection`  | LayoutDirection             | .leftToRight                 | Layout direction of content (`.leftToRight` or `.rightToLeft`). |

------------

## 🍞 Toast Stack
![simplestack](https://github.com/user-attachments/assets/565c010b-55b6-4976-982e-0800e153f6f9)
![customstack](https://github.com/user-attachments/assets/4fafbb4c-9138-4239-9ced-2a3fa2005da1)

### With ToastStackManager, you can show toasts at the same time! 

#### Certainly, you can utilize toast stacks from your view model. Here’s an example: 
```swift
// in your ViewModel

import ToastKit
import Combine

final class ViewModel: ObservableObject {
  let toastManager: ToastStackManager
  
  init(toastManager: ToastStackManager = ToastStackManager()) {
    self.toastManager = toastManager
  }
  
  @MainActor func foo() {
    // Your logic
    toastManager.show(title: "foo success toast", toastColor: .success, autoDisappearDuration: 3.0)
    
    // Your logic
    toastManager.show(title: "foo info toast", toastColor: .info)
  }
}
```

#### in your view

```swift
import ToastKit
import SwiftUI

struct ProfileView: View {
  @StateObject private var vm: ViewModel
  
  init(vm: ViewModel = ViewModel()) {
    _vm = StateObject(wrappedValue: vm)
  }
  
  var body: some View {
    ZStack {
      // Your view
      
      ToastStackView(vm: vm.toastManager)
      // Alternatively, you can utilize it with a custom transition.
      ToastStackView(vm: vm.toastManager, transitionType: .move(edge: .trailing).combined(with: .opacity))
    }
  }
}
```

##### ToastStackView Configuration ⚙️
| Parameter          | Type                         | Default Value                  | Description |
|-------------------|------------------------------|--------------------------------|-------------|
| `title`            | String                     | -                              | The main message displayed in the toast. |
| `toastColor`           | ToastColorTypes        | -                              | The color type or style of the toast. |
| `autoDisappearDuration`| TimeInterval           | 2.0                            | Duration before toast disappears. |

##### ToastStackManager Configuration ⚙️
| Parameter          | Type                         | Default Value                  | Description |
|-------------------|------------------------------|--------------------------------|-------------|
| `vm`            | ToastStackManager               | -                              | The view model that manages |
| `transitionType`| AnyTransition                   | -                              | Transition animation for appearing/disappearing. |

-----------


## ⚠️ Alternatively, you can utilize the `.toast` method to construct a fully customizable toast by specifying the following parameters:

##### Configuration ⚙️
| Parameter          | Type                         | Default Value                  | Description |
|-------------------|------------------------------|--------------------------------|-------------|
| `isVisible`            | Binding<Bool>               | —                                | Binding to control visibility. |
| `title`                | String                      | —                                | The main toast message. |
| `toastColor`           | ToastColorTypes             | `.success`                       | The color type or style of the toast. |
| `transitionType`       | ToastTransitionType         | `.move(edge: .top)`              | Transition animation for appearing/disappearing. |
| `animation`            | Animation                   | `.snappy`                        | Animation used to show/hide the toast. |
| `autoDisappear`        | Bool                        | `true`                           | If `true`, toast disappears automatically. |
| `autoDisappearDuration`| TimeInterval                | `2.0`                            | Duration before toast disappears. |
| `maxWidth`             | Bool                        | `false`                          | If `true`, toast takes maximum width. |
| `subtitle`             | String                      | `""`                             | Subtitle text for additional info. |
| `font`                 | String                      | `"SFProDisplay"`                 | Name of the font used in text. |
| `titleFontSize`        | CGFloat                     | `16`                             | Font size of the title. |
| `titleFontWeight`      | Font.Weight                 | `.semibold`                      | Font weight of the title. |
| `titleFontColor`       | Color                       | `.white`                         | Font color of the title. |
| `subtitleFontSize`     | CGFloat                     | `14`                             | Font size of the subtitle. |
| `subtitleFontWeight`   | Font.Weight                 | `.regular`                       | Font weight of the subtitle. |
| `subtitleFontColor`    | Color                       | `.white`                         | Font color of the subtitle. |
| `multilineTextAlignment`| TextAlignment             | `.center`                        | Alignment of multiline text. |
| `innerHpadding`        | CGFloat                     | `20`                             | Inner horizontal padding. |
| `innerVpadding`        | CGFloat                     | `10`                             | Inner vertical padding. |
| `outterHpadding`       | CGFloat                     | `20`                             | Outer horizontal padding. |
| `stackAligment`        | Alignment                   | `.top`                           | Stack alignment inside the toast. |
| `isStackMaxHeight`     | Bool                        | `true`                           | occupies the maximum available height | 
| `cornerRadius`         | CGFloat                     | `12`                             | Corner radius of the toast. |
| `shadowColor`          | Color                       | `.black.opacity(0.2)`            | Shadow color. |
| `shadowRadius`         | CGFloat                     | `10`                             | Radius of the toast's shadow. |
| `shadowX`              | CGFloat                     | `0`                              | Horizontal offset of shadow. |
| `shadowY`              | CGFloat                     | `4`                              | Vertical offset of shadow. |
| `withIcon`             | Bool                        | `false`                          | Whether to show a custom icon. |
| `iconName`             | String?                     | `nil`                            | Name of the custom icon. |
| `iconSize`             | CGFloat?                    | `nil`                            | Size of the custom icon. |
| `iconColor`            | Color?                      | `nil`                            | Color of the custom icon. |
| `withSfsymbol`         | Bool                        | `false`                          | Whether to show an SF Symbol. |
| `sfSymbolName`         | String?                     | `nil`                            | Name of the SF Symbol. |
| `sfSymbolSize`         | CGFloat?                    | `nil`                            | Size of the SF Symbol. |
| `sfSymbolColor`        | Color?                      | `nil`                            | Color of the SF Symbol. |
| `layoutDirection`      | LayoutDirection             | `.leftToRight`                   | Layout direction of content. |
| `closeSFicon`          | String                      | `"x.circle"`                     | SF Symbol used as close button. |
| `closeSFiconSize`      | CGFloat                     | `18`                             | Size of the close icon. |
| `closeSFiconColor`     | Color                       | `.white`                         | Color of the close icon. |
----
## Installation via Swift Package Manager 🖥️
- Open your project.
- Go to File → Add Package Dependencies.
- Enter URL: https://github.com/Desp0o/ToastKit.git
- Click Add Package.

## Contact 📬

- Email: tornike.despotashvili@gmail.com
- LinkedIn: https://www.linkedin.com/in/tornike-despotashvili-250150219/
- github: https://github.com/Desp0o


