---
title: init(_:)
description: Creates a custom font from a platform font instance.
source: https://developer.apple.com/documentation/swiftui/font/init(_:)
timestamp: 2025-10-29T00:09:26.308Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [font](/documentation/swiftui/font)

**Initializer**

# init(_:)

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 13.0+, visionOS 1.0+, watchOS 6.0+

> Creates a custom font from a platform font instance.

```swift
init(_ font: CTFont)
```

## Discussion

Initializing [Font](/documentation/swiftui/font) with platform font instance (doc://com.apple.documentation/documentation/CoreText/CTFont-q6r) can bridge SwiftUI [Font](/documentation/swiftui/font) with [NSFont](/documentation/AppKit/NSFont) or [UIFont](/documentation/UIKit/UIFont), both of which are toll-free bridged to doc://com.apple.documentation/documentation/CoreText/CTFont-q6r. For example:

```swift
// Use native Core Text API to create desired ctFont.
let ctFont = CTFontCreateUIFontForLanguage(.system, 12, nil)!

// Create SwiftUI Text with the CTFont instance.
let text = Text("Hello").font(Font(ctFont))
```

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
