---
title: Xcode library customization
description: Expose custom views and modifiers in the Xcode library.
source: https://developer.apple.com/documentation/swiftui/xcode-library-customization
timestamp: 2025-10-29T00:11:23.497Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

# Xcode library customization

> Expose custom views and modifiers in the Xcode library.

## Overview

You can add your custom SwiftUI views and view modifiers to Xcode’s library. This allows anyone developing your app or adopting your framework to access them by clicking the Library button (+) in Xcode’s toolbar. You can select and drag the custom library items into code, just like you would for system-provided items.



To add items to the library, create a structure that conforms to the [Library Content Provider](/documentation/DeveloperToolsSupport/LibraryContentProvider) protocol and encapsulate any items you want to add as [Library Item](/documentation/DeveloperToolsSupport/LibraryItem) instances. Implement the doc://com.apple.documentation/documentation/DeveloperToolsSupport/LibraryContentProvider/views-25pdm computed property to add library items containing views. Implement the doc://com.apple.documentation/documentation/DeveloperToolsSupport/LibraryContentProvider/modifiers(base:)-4svii method to add items containing view modifiers. Xcode harvests items from all of the library content providers in your project as you work, and makes them available to you in its library.

## Creating library items

- [LibraryContentProvider](/documentation/DeveloperToolsSupport/LibraryContentProvider) A source of Xcode library and code completion content.
- [LibraryItem](/documentation/DeveloperToolsSupport/LibraryItem) A single item to add to the Xcode library.

## Tool support

- [Previews in Xcode](/documentation/swiftui/previews-in-xcode)
- [Performance analysis](/documentation/swiftui/performance-analysis)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
