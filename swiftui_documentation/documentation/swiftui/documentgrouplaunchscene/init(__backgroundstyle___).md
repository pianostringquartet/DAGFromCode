---
title: init(_:backgroundStyle:_:)
description: Creates a launch scene for document-based applications with a title, a background style, and a set of actions.
source: https://developer.apple.com/documentation/swiftui/documentgrouplaunchscene/init(_:backgroundstyle:_:)
timestamp: 2025-10-29T00:11:21.515Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [documentgrouplaunchscene](/documentation/swiftui/documentgrouplaunchscene)

**Initializer**

# init(_:backgroundStyle:_:)

**Available on:** iOS 18.0+, iPadOS 18.0+, Mac Catalyst 18.0+, visionOS 2.0+

> Creates a launch scene for document-based applications with a title, a background style, and a set of actions.

```swift
nonisolated init<B>(_ title: LocalizedStringKey, backgroundStyle: B = BackgroundStyle(), @ViewBuilder _ actions: () -> Actions = { DefaultDocumentGroupLaunchActions() }) where B : ShapeStyle
```

## Parameters

**title**

A key to use for the view title.



**backgroundStyle**

A background style of the view.



**actions**

A view builder for returning the view’s actions.



## Discussion

Use a `DocumentGroupLaunchScene` alongside any [Document Group](/documentation/swiftui/documentgroup) scenes. If you don’t implement a `DocumentGroup` in the app declaration, you can get the same design by implementing a [Document Launch View](/documentation/swiftui/documentlaunchview).

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
