---
title: previewDisplayName(_:)
description: Sets a user visible name to show in the canvas for a preview.
source: https://developer.apple.com/documentation/swiftui/view/previewdisplayname(_:)
timestamp: 2025-10-29T00:14:38.524Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# previewDisplayName(_:)

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 13.0+, visionOS 1.0+, watchOS 6.0+

> Sets a user visible name to show in the canvas for a preview.

```swift
nonisolated func previewDisplayName(_ value: String?) -> some View
```

## Parameters

**value**

A name for the preview.



## Return Value

A preview that uses the given name.

## Discussion

Apply this modifier to a view inside your [Preview Provider](/documentation/swiftui/previewprovider) implementation to associate a display name with that view’s preview:

```swift
struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage()
            .previewDisplayName("Circle")
    }
}
```



Add a name when you have multiple previews together in the canvas that you need to tell apart. The default value is `nil`, in which case Xcode displays a default string.

## Defining a preview

- [Previewable()](/documentation/swiftui/previewable())
- [PreviewProvider](/documentation/swiftui/previewprovider)
- [PreviewPlatform](/documentation/swiftui/previewplatform)
- [PreviewModifier](/documentation/swiftui/previewmodifier)
- [PreviewModifierContent](/documentation/swiftui/previewmodifiercontent)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
