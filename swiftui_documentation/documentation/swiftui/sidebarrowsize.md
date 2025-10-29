---
title: SidebarRowSize
description: The standard sizes of sidebar rows.
source: https://developer.apple.com/documentation/swiftui/sidebarrowsize
timestamp: 2025-10-29T00:12:46.380Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Enumeration**

# SidebarRowSize

**Available on:** iOS 16.0+, iPadOS 16.0+, Mac Catalyst 16.0+, macOS 13.0+, tvOS 16.0+, visionOS 1.0+, watchOS 9.0+

> The standard sizes of sidebar rows.

```swift
enum SidebarRowSize
```

## Overview

On macOS, sidebar rows have three different sizes: small, medium, and large. The size is primarily controlled by the current users’ “Sidebar Icon Size” in Appearance settings, and applies to all applications.

On all other platforms, the only supported sidebar size is `.medium`.

This size can be read or written in the environment using `EnvironmentValues.sidebarRowSize`.

## Conforms To

- [Copyable](/documentation/Swift/Copyable)
- [Equatable](/documentation/Swift/Equatable)
- [Hashable](/documentation/Swift/Hashable)
- [Sendable](/documentation/Swift/Sendable)
- [SendableMetatype](/documentation/Swift/SendableMetatype)

## Getting row sizes

- [SidebarRowSize.small](/documentation/swiftui/sidebarrowsize/small) The standard “small” row size
- [SidebarRowSize.medium](/documentation/swiftui/sidebarrowsize/medium) The standard “medium” row size
- [SidebarRowSize.large](/documentation/swiftui/sidebarrowsize/large) The standard “large” row size

## Configuring the sidebar

- [sidebarRowSize](/documentation/swiftui/environmentvalues/sidebarrowsize)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
