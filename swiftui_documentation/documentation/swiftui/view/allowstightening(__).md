---
title: allowsTightening(_:)
description: Sets whether text in this view can compress the space between characters when necessary to fit text in a line.
source: https://developer.apple.com/documentation/swiftui/view/allowstightening(_:)
timestamp: 2025-10-29T00:13:39.799Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# allowsTightening(_:)

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 13.0+, visionOS 1.0+, watchOS 6.0+

> Sets whether text in this view can compress the space between characters when necessary to fit text in a line.

```swift
nonisolated func allowsTightening(_ flag: Bool) -> some View
```

## Parameters

**flag**

A Boolean value that indicates whether the space between characters compresses when necessary.



## Return Value

A view that can compress the space between characters when necessary to fit text in a line.

## Discussion

Use `allowsTightening(_:)` to enable the compression of inter-character spacing of text in a view to try to fit the text in the view’s bounds.

In the example below, two identically configured text views show the effects of `allowsTightening(_:)` on the compression of the spacing between characters:

```swift
VStack {
    Text("This is a wide text element")
        .font(.body)
        .frame(width: 200, height: 50, alignment: .leading)
        .lineLimit(1)
        .allowsTightening(true)

    Text("This is a wide text element")
        .font(.body)
        .frame(width: 200, height: 50, alignment: .leading)
        .lineLimit(1)
        .allowsTightening(false)
}
```



## Controlling hit testing

- [contentShape(_:eoFill:)](/documentation/swiftui/view/contentshape(_:eofill:))
- [contentShape(_:_:eoFill:)](/documentation/swiftui/view/contentshape(_:_:eofill:))
- [ContentShapeKinds](/documentation/swiftui/contentshapekinds)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
