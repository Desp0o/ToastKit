<img src="https://github.com/user-attachments/assets/afe65c66-8c83-4b0b-bcfc-cca8ed4b9458" alt="ToastKit Logo Design" width="250" />

# ToastKit
ToastKit is a lightweight and fully customizable Swift package that helps you display informative toast messages in your app. It’s easy to use, supports 
various built-in toast styles like success, warning, info, error, with icons.... and also allows full customization for your specific needs.

You can quickly use ready-made toasts or create your own custom toast view with complete control over layout, colors, animations, icons, and more.


![Static Badge](https://img.shields.io/badge/Swit-6.1-orange) ![Static Badge](https://img.shields.io/badge/iOS-17.0%2B-white) ![Static Badge](https://img.shields.io/badge/Version%20-%201.0.0-skyblue) ![Static Badge](https://img.shields.io/badge/LICENSE-MIT-yellow) ![Static Badge](https://img.shields.io/badge/SPM-SUCCESS-green)



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
<img src="https://github.com/user-attachments/assets/e0881ee3-4baf-4c6e-9a50-a410957e0a20" alt="success" />

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

## ⚠️ Alternatively, you can use .toast to build a fully customizable toast by providing the following parameters ⚠️

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


