---
title: renderingMode(_:)
description: Indicates whether SwiftUI renders an image as-is, or by using a different mode.
source: https://developer.apple.com/documentation/swiftui/image/renderingmode(_:)
timestamp: 2025-10-29T00:14:19.723Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [image](/documentation/swiftui/image)

**Instance Method**

# renderingMode(_:)

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 13.0+, visionOS 1.0+, watchOS 6.0+

> Indicates whether SwiftUI renders an image as-is, or by using a different mode.

```swift
func renderingMode(_ renderingMode: Image.TemplateRenderingMode?) -> Image
```

## Parameters

**renderingMode**

The mode SwiftUI uses to render images.



## Return Value

A modified [Image](/documentation/swiftui/image).

## Discussion

The [Template Rendering Mode](/documentation/swiftui/image/templaterenderingmode) enumeration has two cases: [original](/documentation/swiftui/image/templaterenderingmode/original) and [template](/documentation/swiftui/image/templaterenderingmode/template). The original mode renders pixels as they appear in the original source image. Template mode renders all nontransparent pixels as the foreground color, which you can use for purposes like creating image masks.

The following example shows both rendering modes, as applied to an icon image of a green circle with darker green border:

```swift
Image("dot_green")
    .renderingMode(.original)
Image("dot_green")
    .renderingMode(.template)
```



You also use `renderingMode` to produce multicolored system graphics from the SF Symbols set. Use the [original](/documentation/swiftui/image/templaterenderingmode/original) mode to apply a foreground color to all parts of the symbol except those that have a distinct color in the graphic. The following example shows three uses of the `person.crop.circle.badge.plus` symbol to achieve different effects:

- A default appearance with no foreground color or template rendering mode specified. The symbol appears all black in light mode, and all white in Dark Mode.
- The multicolor behavior achieved by using `original` template rendering mode, along with a blue foreground color. This mode causes the graphic to override the foreground color for distinctive parts of the image, in this case the plus icon.
- A single-color template behavior achieved by using `template` rendering mode with a blue foreground color. This mode applies the foreground color to the entire image, regardless of the user’s Appearance preferences.

```swift
HStack {
   Image(systemName: "person.crop.circle.badge.plus")
   Image(systemName: "person.crop.circle.badge.plus")
       .renderingMode(.original)
       .foregroundColor(.blue)
   Image(systemName: "person.crop.circle.badge.plus")
       .renderingMode(.template)
       .foregroundColor(.blue)
}
.font(.largeTitle)
```



Use the SF Symbols app to find system images that offer the multicolor feature. Keep in mind that some multicolor symbols use both the foreground and accent colors.

## Specifying rendering behavior

- [antialiased(_:)](/documentation/swiftui/image/antialiased(_:))
- [symbolRenderingMode(_:)](/documentation/swiftui/image/symbolrenderingmode(_:))
- [interpolation(_:)](/documentation/swiftui/image/interpolation(_:))
- [Image.TemplateRenderingMode](/documentation/swiftui/image/templaterenderingmode)
- [Image.Interpolation](/documentation/swiftui/image/interpolation)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
