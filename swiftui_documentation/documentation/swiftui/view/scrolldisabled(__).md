---
title: scrollDisabled(_:)
description: Disables or enables scrolling in scrollable views.
source: https://developer.apple.com/documentation/swiftui/view/scrolldisabled(_:)
timestamp: 2025-10-29T00:10:04.542Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# scrollDisabled(_:)

**Available on:** iOS 16.0+, iPadOS 16.0+, Mac Catalyst 16.0+, macOS 13.0+, tvOS 16.0+, visionOS 1.0+, watchOS 9.0+

> Disables or enables scrolling in scrollable views.

```swift
nonisolated func scrollDisabled(_ disabled: Bool) -> some View
```

## Parameters

**disabled**

A Boolean that indicates whether scrolling is disabled.



## Discussion

Use this modifier to control whether a [Scroll View](/documentation/swiftui/scrollview) can scroll:

```swift
@State private var isScrollDisabled = false

var body: some View {
    ScrollView {
        VStack {
            Toggle("Disable", isOn: $isScrollDisabled)
            MyContent()
        }
    }
    .scrollDisabled(isScrollDisabled)
}
```

SwiftUI passes the disabled property through the environment, which means you can use this modifier to disable scrolling for all scroll views within a view hierarchy. In the following example, the modifier affects both scroll views:

```swift
 ScrollView {
     ForEach(rows) { row in
         ScrollView(.horizontal) {
             RowContent(row)
         }
     }
 }
 .scrollDisabled(true)
```

You can also use this modifier to disable scrolling for other kinds of scrollable views, like a [List](/documentation/swiftui/list) or a [Text Editor](/documentation/swiftui/texteditor).

## Disabling scrolling

- [isScrollEnabled](/documentation/swiftui/environmentvalues/isscrollenabled)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
