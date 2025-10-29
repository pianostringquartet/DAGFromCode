---
title: init(anchor:)
description: Constructs a new help link with the specified anchor in the main app bundle’s book.
source: https://developer.apple.com/documentation/swiftui/helplink/init(anchor:)
timestamp: 2025-10-29T00:12:06.327Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [helplink](/documentation/swiftui/helplink)

**Initializer**

# init(anchor:)

**Available on:** macOS 14.0+

> Constructs a new help link with the specified anchor in the main app bundle’s book.

```swift
init(anchor: NSHelpManager.AnchorName)
```

## Parameters

**anchor**

The anchor within the help book to open to.



## Discussion

The main app bundle book name is defined by the `CFBundleHelpBookName` key in its Info.plist file.

## Creating a help link

- [init(action:)](/documentation/swiftui/helplink/init(action:))
- [init(destination:)](/documentation/swiftui/helplink/init(destination:))
- [init(anchor:book:)](/documentation/swiftui/helplink/init(anchor:book:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
