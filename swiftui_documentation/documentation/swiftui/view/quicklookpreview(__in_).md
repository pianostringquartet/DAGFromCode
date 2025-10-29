---
title: quickLookPreview(_:in:)
description: Presents a Quick Look preview of the URLs you provide.
source: https://developer.apple.com/documentation/swiftui/view/quicklookpreview(_:in:)
timestamp: 2025-10-29T00:14:35.397Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# quickLookPreview(_:in:)

**Available on:** iOS 14.0+, iPadOS 14.0+, macOS 11.0+

> Presents a Quick Look preview of the URLs you provide.

```swift
nonisolated func quickLookPreview<Items>(_ selection: Binding<Items.Element?>, in items: Items) -> some View where Items : RandomAccessCollection, Items.Element == URL
```

## Parameters

**selection**

A [Binding](/documentation/SwiftUI/Binding) to an element that’s part of the items collection. This is the URL that you currently want to preview.



**items**

A collection of URLs to preview.



## Return Value

A view that presents the preview of the contents of the URL.

## Discussion

The Quick Look preview appears when you set the binding to a non-`nil` item. When you set the item back to `nil`, Quick Look dismisses the preview. If the value of the selection binding isn’t contained in the items collection, Quick Look treats it the same as a `nil` selection.

Quick Look updates the value of the selection binding to match the URL of the file the user is previewing. Upon dismissal by the user, Quick Look automatically sets the item binding to `nil`.

## Previewing content

- [quickLookPreview(_:)](/documentation/swiftui/view/quicklookpreview(_:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
