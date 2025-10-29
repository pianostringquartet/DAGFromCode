---
title: PreferenceKey
description: A named value produced by a view.
source: https://developer.apple.com/documentation/swiftui/preferencekey
timestamp: 2025-10-29T00:11:23.858Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Protocol**

# PreferenceKey

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 13.0+, visionOS 1.0+, watchOS 6.0+

> A named value produced by a view.

```swift
protocol PreferenceKey
```

## Overview

A view with multiple children automatically combines its values for a given preference into a single value visible to its ancestors.

## Conforming Types

- [PreferredColorSchemeKey](/documentation/swiftui/preferredcolorschemekey)
- [Text.LayoutKey](/documentation/swiftui/text/layoutkey)

## Getting the default value

- [defaultValue](/documentation/swiftui/preferencekey/defaultvalue) The default value of the preference.
- [Value](/documentation/swiftui/preferencekey/value) The type of value produced by this preference.

## Combining preferences

- [reduce(value:nextValue:)](/documentation/swiftui/preferencekey/reduce(value:nextvalue:)) Combines a sequence of values by modifying the previously-accumulated value with the result of a closure that provides the next value.

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
