---
title: subscript(_:)
description: Returns a sequence which iterates of the values of a single attribute.
source: https://developer.apple.com/documentation/swiftui/attributedtextselection/attributes/subscript(_:)
timestamp: 2025-10-29T00:14:24.250Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [attributedtextselection](/documentation/swiftui/attributedtextselection) › [attributes](/documentation/swiftui/attributedtextselection/attributes)

**Instance Subscript**

# subscript(_:)

**Available on:** iOS 26.0+, iPadOS 26.0+, Mac Catalyst 26.0+, macOS 26.0+, tvOS 26.0+, visionOS 26.0+, watchOS 26.0+

> Returns a sequence which iterates of the values of a single attribute.

```swift
subscript<K>(type: K.Type) -> some Sequence<Optional<K.Value>> where K : AttributedStringKey, K.Value : Sendable { get }
```

## Overview

In the case of a range selection, the returned sequence is based on the runs of the specified attribute, not the runs over all attributes.

```swift
selection.attributes(in: text)[MyAttribute.self].contains(myValue)
```

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
