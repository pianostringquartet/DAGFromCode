---
title: init(_:id:)
description: Create an  with the specified label and identifier.
source: https://developer.apple.com/documentation/swiftui/accessibilitycustomcontentkey/init(_:id:)
timestamp: 2025-10-29T00:11:42.528Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [accessibilitycustomcontentkey](/documentation/swiftui/accessibilitycustomcontentkey)

**Initializer**

# init(_:id:)

**Available on:** iOS 16.0+, iPadOS 16.0+, Mac Catalyst 16.0+, macOS 13.0+, tvOS 16.0+, visionOS 1.0+, watchOS 9.0+

> Create an  with the specified label and identifier.

```swift
init(_ label: LocalizedStringResource, id: String)
```

## Parameters

**label**

Localized text describing to the user what is contained in this additional information entry. For example: “orientation”.



**id**

String used to identify the additional information entry to SwiftUI. Adding an entry will replace any previous value with the same identifier.



## Creating a key

- [init(_:)](/documentation/swiftui/accessibilitycustomcontentkey/init(_:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
