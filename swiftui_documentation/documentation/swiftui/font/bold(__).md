---
title: bold(_:)
description: Adds or removes bold or emphasized styling on the font.
source: https://developer.apple.com/documentation/swiftui/font/bold(_:)
timestamp: 2025-10-29T00:12:53.369Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [font](/documentation/swiftui/font)

**Instance Method**

# bold(_:)

**Available on:** iOS 26.0+, iPadOS 26.0+, Mac Catalyst 26.0+, macOS 26.0+, tvOS 26.0+, visionOS 26.0+, watchOS 26.0+

> Adds or removes bold or emphasized styling on the font.

```swift
func bold(_ isActive: Bool) -> Font
```

## Discussion

For fonts created from text styles, passing `true` could mean applying emphasized styling, which does not necessarily mean the bold weight specifically, so this modifier is not to be confused with [weight(_:)](/documentation/SwiftUI/Font/weight(_:)).

For example:

```swift
Font.body.bold(true)
```

will most likely get you the emphasized version of body text style, which is often in [semibold](/documentation/SwiftUI/Font/Weight/semibold) weight. While

```swift
Font.body.weight(.bold)
```

will specifically get you the body text style font in the [bold](/documentation/SwiftUI/Font/Weight/bold) weight.

Using:

```swift
Font.body.bold(false)
```

will remove any emphasized styling from the font returning to its default weight which is most likely but not guaranteed to be 0.0 or [regular](/documentation/swiftui/font/weight/regular).

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
