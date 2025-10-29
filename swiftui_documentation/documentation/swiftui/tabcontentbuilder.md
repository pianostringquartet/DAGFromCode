---
title: TabContentBuilder
description: A result builder that constructs tabs for a tab view that supports programmatic selection. This builder requires that all tabs in the tab view have the same selection type.
source: https://developer.apple.com/documentation/swiftui/tabcontentbuilder
timestamp: 2025-10-29T00:10:20.267Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Structure**

# TabContentBuilder

**Available on:** iOS 18.0+, iPadOS 18.0+, Mac Catalyst 18.0+, macOS 15.0+, tvOS 18.0+, visionOS 2.0+, watchOS 11.0+

> A result builder that constructs tabs for a tab view that supports programmatic selection. This builder requires that all tabs in the tab view have the same selection type.

```swift
@resultBuilder struct TabContentBuilder<TabValue> where TabValue : Hashable
```

## Structures

- [TabContentBuilder.Content](/documentation/swiftui/tabcontentbuilder/content) A view representation of the content of a builder-based tab view with selection.

## Type Methods

- [buildBlock(_:)](/documentation/swiftui/tabcontentbuilder/buildblock(_:))
- [buildBlock(_:_:)](/documentation/swiftui/tabcontentbuilder/buildblock(_:_:))
- [buildBlock(_:_:_:)](/documentation/swiftui/tabcontentbuilder/buildblock(_:_:_:))
- [buildBlock(_:_:_:_:)](/documentation/swiftui/tabcontentbuilder/buildblock(_:_:_:_:))
- [buildBlock(_:_:_:_:_:)](/documentation/swiftui/tabcontentbuilder/buildblock(_:_:_:_:_:))
- [buildBlock(_:_:_:_:_:_:)](/documentation/swiftui/tabcontentbuilder/buildblock(_:_:_:_:_:_:))
- [buildBlock(_:_:_:_:_:_:_:)](/documentation/swiftui/tabcontentbuilder/buildblock(_:_:_:_:_:_:_:))
- [buildBlock(_:_:_:_:_:_:_:_:)](/documentation/swiftui/tabcontentbuilder/buildblock(_:_:_:_:_:_:_:_:))
- [buildBlock(_:_:_:_:_:_:_:_:_:)](/documentation/swiftui/tabcontentbuilder/buildblock(_:_:_:_:_:_:_:_:_:))
- [buildBlock(_:_:_:_:_:_:_:_:_:_:)](/documentation/swiftui/tabcontentbuilder/buildblock(_:_:_:_:_:_:_:_:_:_:))
- [buildEither(first:)](/documentation/swiftui/tabcontentbuilder/buildeither(first:))
- [buildEither(second:)](/documentation/swiftui/tabcontentbuilder/buildeither(second:))
- [buildExpression(_:)](/documentation/swiftui/tabcontentbuilder/buildexpression(_:))
- [buildIf(_:)](/documentation/swiftui/tabcontentbuilder/buildif(_:))
- [buildLimitedAvailability(_:)](/documentation/swiftui/tabcontentbuilder/buildlimitedavailability(_:))

## Configuring a tab

- [sectionActions(content:)](/documentation/swiftui/view/sectionactions(content:))
- [TabPlacement](/documentation/swiftui/tabplacement)
- [TabContent](/documentation/swiftui/tabcontent)
- [AnyTabContent](/documentation/swiftui/anytabcontent)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
