---
title: Deprecated symbols
description: Review deprecated navigation link initializers.
source: https://developer.apple.com/documentation/swiftui/navigationlink-deprecated
timestamp: 2025-10-29T00:09:28.964Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**API Collection**

# Deprecated symbols

> Review deprecated navigation link initializers.

## Overview

For information about updating your use of navigation symbols, see [Migrating-to-New-Navigation](/documentation/swiftui/migrating-to-new-navigation-types).

## Creating links with view builders

- [init(_:isActive:destination:)](/documentation/swiftui/navigationlink/init(_:isactive:destination:)) Creates a navigation link that presents a destination view when active, with a text label that the link generates from a localized string key.
- [init(isActive:destination:label:)](/documentation/swiftui/navigationlink/init(isactive:destination:label:)) Creates a navigation link that presents the destination view when active.
- [init(_:tag:selection:destination:)](/documentation/swiftui/navigationlink/init(_:tag:selection:destination:)) Creates a navigation link that presents a destination view when a bound selection variable matches a value you provide, using a text label that the link generates from a title string.
- [init(tag:selection:destination:label:)](/documentation/swiftui/navigationlink/init(tag:selection:destination:label:)) Creates a navigation link that presents the destination view when a bound selection variable equals a given tag value.

## Creating links for WatchKit

- [init(destinationName:isActive:label:)](/documentation/swiftui/navigationlink/init(destinationname:isactive:label:)) Creates a navigation link that presents a view from a WatchKit storyboard when active.
- [init(destinationName:tag:selection:label:)](/documentation/swiftui/navigationlink/init(destinationname:tag:selection:label:)) Creates a navigation link that presents a view from a WatchKit storyboard when a bound selection variable matches a value you provide.
- [init(destinationName:label:)](/documentation/swiftui/navigationlink/init(destinationname:label:)) Creates a navigation link that presents a view from a WatchKit storyboard.

## Creating links with view arguments

- [init(_:destination:isActive:)](/documentation/swiftui/navigationlink/init(_:destination:isactive:)) Creates a navigation link that presents a destination view when active, with a text label that the link generates from a localized string key.
- [init(destination:isActive:label:)](/documentation/swiftui/navigationlink/init(destination:isactive:label:)) Creates a navigation link that presents the destination view when active.
- [init(_:destination:tag:selection:)](/documentation/swiftui/navigationlink/init(_:destination:tag:selection:)) Creates a navigation link that presents a destination view when a bound selection variable matches a value you provide, using a text label that the link generates from a title string.
- [init(destination:tag:selection:label:)](/documentation/swiftui/navigationlink/init(destination:tag:selection:label:)) Creates a navigation link that presents the destination view when a bound selection variable equals a given tag value.

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
