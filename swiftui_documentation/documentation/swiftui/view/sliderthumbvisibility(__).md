---
title: sliderThumbVisibility(_:)
description: Sets the thumb visibility for s within this view.
source: https://developer.apple.com/documentation/swiftui/view/sliderthumbvisibility(_:)
timestamp: 2025-10-29T00:11:18.185Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# sliderThumbVisibility(_:)

**Available on:** iOS 26.0+, iPadOS 26.0+, Mac Catalyst 26.0+, macOS 26.0+, visionOS 26.0+, watchOS 26.0+

> Sets the thumb visibility for s within this view.

```swift
nonisolated func sliderThumbVisibility(_ visibility: Visibility) -> some View
```

## Parameters

**visibility**

The slider thumb visibility to apply.



## Discussion

Use this modifier to override the default slider thumb visibility. For example, the code below creates a `Slider` without an indicator:

```swift
@State private var speed = 50.0
@State private var isEditing = false

var body: some View {
    VStack {
        Slider(
            value: $speed,
            in: 0...100,
            onEditingChanged: { editing in
                isEditing = editing
            }
        )
        .sliderThumbVisibility(.hidden)

        Text("\(speed)")
            .foregroundColor(isEditing ? .red : .blue)
    }
}
```

Note: On watchOS, the slider thumb is always visible.

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
