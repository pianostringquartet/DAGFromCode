---
title: quickLookPreview(_:)
description: Presents a Quick Look preview of the contents of a single URL.
source: https://developer.apple.com/documentation/swiftui/view/quicklookpreview(_:)
timestamp: 2025-10-29T00:11:44.409Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# quickLookPreview(_:)

**Available on:** iOS 14.0+, iPadOS 14.0+, macOS 11.0+

> Presents a Quick Look preview of the contents of a single URL.

```swift
nonisolated func quickLookPreview(_ item: Binding<URL?>) -> some View
```

## Parameters

**item**

A [Binding](/documentation/SwiftUI/Binding) to a URL that should be previewed.



## Return Value

A view that presents the preview of the contents of the URL.

## Discussion

The Quick Look preview appears when you set the binding to a non-`nil` item. When you set the item back to `nil`, Quick Look dismisses the preview.

Upon dismissal by the user, Quick Look automatically sets the item binding to `nil`. Quick Look displays the preview when a non-`nil` item is set. Set `item` to `nil` to dismiss the preview.

## Previewing content

- [quickLookPreview(_:in:)](/documentation/swiftui/view/quicklookpreview(_:in:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
