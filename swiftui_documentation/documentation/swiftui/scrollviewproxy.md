---
title: ScrollViewProxy
description: A proxy value that supports programmatic scrolling of the scrollable views within a view hierarchy.
source: https://developer.apple.com/documentation/swiftui/scrollviewproxy
timestamp: 2025-10-29T00:14:46.694Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Structure**

# ScrollViewProxy

**Available on:** iOS 14.0+, iPadOS 14.0+, Mac Catalyst 14.0+, macOS 11.0+, tvOS 14.0+, visionOS 1.0+, watchOS 7.0+

> A proxy value that supports programmatic scrolling of the scrollable views within a view hierarchy.

```swift
struct ScrollViewProxy
```

## Overview

You don’t create instances of `ScrollViewProxy` directly. Instead, your [Scroll View Reader](/documentation/swiftui/scrollviewreader) receives an instance of `ScrollViewProxy` in its `content` view builder. You use actions within this view builder, such as button and gesture handlers or the [onChange(of:perform:)](/documentation/swiftui/view/onchange(of:perform:)) method, to call the proxy’s [scrollTo(_:anchor:)](/documentation/swiftui/scrollviewproxy/scrollto(_:anchor:)) method.

## Performing scrolling

- [scrollTo(_:anchor:)](/documentation/swiftui/scrollviewproxy/scrollto(_:anchor:)) Scans all scroll views contained by the proxy for the first with a child view with identifier , and then scrolls to that view.

## Creating a scroll view

- [ScrollView](/documentation/swiftui/scrollview)
- [ScrollViewReader](/documentation/swiftui/scrollviewreader)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
