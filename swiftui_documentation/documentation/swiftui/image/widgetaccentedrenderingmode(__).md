---
title: widgetAccentedRenderingMode(_:)
description: Specifies the how to render an  when using the  mode.
source: https://developer.apple.com/documentation/swiftui/image/widgetaccentedrenderingmode(_:)
timestamp: 2025-10-29T00:13:01.606Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [image](/documentation/swiftui/image)

**Instance Method**

# widgetAccentedRenderingMode(_:)

**Available on:** iOS 18.0+, iPadOS 18.0+, Mac Catalyst 18.0+, macOS 15.0+, visionOS 26.0+, watchOS 11.0+

> Specifies the how to render an  when using the  mode.

```swift
func widgetAccentedRenderingMode(_ renderingMode: WidgetAccentedRenderingMode?) -> some View
```

## Parameters

**renderingMode**

A constant describing how the `Image` should be rendered.



## Discussion

```swift
var body: some View {
    VStack {
        Image("cat_full")
            .resizable()
            .widgetAccentedRenderingMode(.fullColor)
    }
}
```

> [!IMPORTANT]
> If the `Image` is a subview for a group that has `widgetAccentable(true)` applied, this modifier may conflict.

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
