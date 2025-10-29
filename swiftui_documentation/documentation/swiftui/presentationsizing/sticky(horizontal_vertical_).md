---
title: sticky(horizontal:vertical:)
description: Modifies self to be sticky in the specified dimensions — growing, but not shrinking.
source: https://developer.apple.com/documentation/swiftui/presentationsizing/sticky(horizontal:vertical:)
timestamp: 2025-10-29T00:09:37.137Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [presentationsizing](/documentation/swiftui/presentationsizing)

**Instance Method**

# sticky(horizontal:vertical:)

**Available on:** iOS 18.0+, iPadOS 18.0+, Mac Catalyst 18.0+, macOS 15.0+, tvOS 18.0+, visionOS 2.0+, watchOS 11.0+

> Modifies self to be sticky in the specified dimensions — growing, but not shrinking.

```swift
func sticky(horizontal: Bool = false, vertical: Bool = false) -> some PresentationSizing
```

## Parameters

**horizontal**

A boolean indicating whether to maintain the largest size horizontally



**vertical**

A boolean indicating whether to maintain the largest size vertically



## Return Value

A modified version of self sticking to dimensions specified

## Discussion

If `sticky` is `.vertical`, the presentation can grow in the vertical and horizontal dimensions when its content size grows, but will not shrink in the vertical dimension when content size shrinks.

```swift
ContentView()
  .sheet(isPresented: $presentSheet) {
    MyDynamicSheetContent()
      .presentationSizing(
        .form.sticky(horizontal: false, vertical: true))
  }
```

> [!NOTE]
> [fitted(horizontal:vertical:)](/documentation/swiftui/presentationsizing/fitted(horizontal:vertical:))

## Creating custom presentation size

- [fitted(horizontal:vertical:)](/documentation/swiftui/presentationsizing/fitted(horizontal:vertical:))
- [proposedSize(for:context:)](/documentation/swiftui/presentationsizing/proposedsize(for:context:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
