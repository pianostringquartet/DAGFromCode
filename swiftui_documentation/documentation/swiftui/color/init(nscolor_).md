---
title: init(nsColor:)
description: Creates a color from an AppKit color.
source: https://developer.apple.com/documentation/swiftui/color/init(nscolor:)
timestamp: 2025-10-29T00:10:09.995Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [color](/documentation/swiftui/color)

**Initializer**

# init(nsColor:)

**Available on:** macOS 12.0+

> Creates a color from an AppKit color.

```swift
nonisolated init(nsColor: NSColor)
```

## Discussion

Use this method to create a SwiftUI color from an [NSColor](/documentation/AppKit/NSColor) instance. The new color preserves the adaptability of the original. For example, you can create a rectangle using [link Color](/documentation/AppKit/NSColor/linkColor) to see how the shade adjusts to match the user’s system settings:

```swift
struct Box: View {
    var body: some View {
        Color(nsColor: .linkColor)
            .frame(width: 200, height: 100)
    }
}
```

The `Box` view defined above automatically changes its appearance when the user turns on Dark Mode. With the light and dark appearances placed side by side, you can see the subtle difference in shades:



> [!NOTE]
> Use this initializer only if you need to convert an existing [NSColor](/documentation/AppKit/NSColor) to a SwiftUI color. Otherwise, create a SwiftUI [Color](/documentation/swiftui/color) using an initializer like [init(_:red:green:blue:opacity:)](/documentation/swiftui/color/init(_:red:green:blue:opacity:)), or use a system color like [blue](/documentation/swiftui/shapestyle/blue).

## Creating a color from another color

- [init(uiColor:)](/documentation/swiftui/color/init(uicolor:))
- [init(cgColor:)](/documentation/swiftui/color/init(cgcolor:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
