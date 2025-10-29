---
title: previews
description: A collection of views to preview.
source: https://developer.apple.com/documentation/swiftui/previewprovider/previews-swift.type.property
timestamp: 2025-10-29T00:13:02.504Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [previewprovider](/documentation/swiftui/previewprovider)

**Type Property**

# previews

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 13.0+, visionOS 1.0+, watchOS 6.0+

> A collection of views to preview.

```swift
@ViewBuilder @MainActor @preconcurrency static var previews: Self.Previews { get }
```

## Discussion

Implement a computed `previews` property to indicate the content to preview. Xcode generates a preview for each view that you list. You can apply [View](/documentation/swiftui/view) modifiers to the views, like you do when creating a custom view. For a preview, you can also use various preview-specific modifiers that customize the preview. For example, you can choose a specific device for the preview by adding the [previewDevice(_:)](/documentation/swiftui/view/previewdevice(_:)) modifier:

```swift
struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage()
            .previewDevice(PreviewDevice(rawValue: "iPad Pro (11-inch)"))
    }
}
```

For the full list of preview-specific modifiers, see [Previews-in](/documentation/swiftui/previews-in-xcode).

## Creating a preview

- [Previews](/documentation/swiftui/previewprovider/previews-swift.associatedtype)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
