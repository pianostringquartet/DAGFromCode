---
title: init(uiColor:)
description: Creates a color from a UIKit color.
source: https://developer.apple.com/documentation/swiftui/color/init(uicolor:)
timestamp: 2025-10-29T00:11:31.924Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [color](/documentation/swiftui/color)

**Initializer**

# init(uiColor:)

**Available on:** iOS 15.0+, iPadOS 15.0+, Mac Catalyst 15.0+, tvOS 15.0+, visionOS 1.0+, watchOS 8.0+

> Creates a color from a UIKit color.

```swift
init(uiColor: UIColor)
```

## Discussion

Use this method to create a SwiftUI color from a [UIColor](/documentation/UIKit/UIColor) instance. The new color preserves the adaptability of the original. For example, you can create a rectangle using [link](/documentation/UIKit/UIColor/link) to see how the shade adjusts to match the user’s system settings:

```swift
struct Box: View {
    var body: some View {
        Color(uiColor: .link)
            .frame(width: 200, height: 100)
    }
}
```

The `Box` view defined above automatically changes its appearance when the user turns on Dark Mode. With the light and dark appearances placed side by side, you can see the subtle difference in shades:



> [!NOTE]
> Use this initializer only if you need to convert an existing [UIColor](/documentation/UIKit/UIColor) to a SwiftUI color. Otherwise, create a SwiftUI [Color](/documentation/swiftui/color) using an initializer like [init(_:red:green:blue:opacity:)](/documentation/swiftui/color/init(_:red:green:blue:opacity:)), or use a system color like [blue](/documentation/swiftui/shapestyle/blue).

## Creating a color from another color

- [init(nsColor:)](/documentation/swiftui/color/init(nscolor:))
- [init(cgColor:)](/documentation/swiftui/color/init(cgcolor:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
