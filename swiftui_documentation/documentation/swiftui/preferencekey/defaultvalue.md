---
title: defaultValue
description: The default value of the preference.
source: https://developer.apple.com/documentation/swiftui/preferencekey/defaultvalue
timestamp: 2025-10-29T00:14:34.353Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [preferencekey](/documentation/swiftui/preferencekey)

**Type Property**

# defaultValue

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 13.0+, visionOS 1.0+, watchOS 6.0+

> The default value of the preference.

```swift
static var defaultValue: Self.Value { get }
```

## Discussion

Views that have no explicit value for the key produce this default value. Combining child views may remove an implicit value produced by using the default. This means that `reduce(value: &x, nextValue: {defaultValue})` shouldn’t change the meaning of `x`.

## Getting the default value

- [Value](/documentation/swiftui/preferencekey/value)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
