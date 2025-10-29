---
title: buildEither(second:)
source: https://developer.apple.com/documentation/swiftui/toolbarcontentbuilder/buildeither(second:)
timestamp: 2025-10-29T00:14:48.835Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [toolbarcontentbuilder](/documentation/swiftui/toolbarcontentbuilder)

**Type Method**

# buildEither(second:)

**Available on:** iOS 16.0+, iPadOS 16.0+, Mac Catalyst 16.0+, macOS 13.0+, tvOS 16.0+, visionOS 1.0+, watchOS 9.0+

```swift
static func buildEither<TrueContent, FalseContent>(second: FalseContent) -> _ConditionalContent<TrueContent, FalseContent> where TrueContent : CustomizableToolbarContent, FalseContent : CustomizableToolbarContent
```

## Building conditional toolbar content

- [buildIf(_:)](/documentation/swiftui/toolbarcontentbuilder/buildif(_:))
- [buildEither(first:)](/documentation/swiftui/toolbarcontentbuilder/buildeither(first:))
- [buildExpression(_:)](/documentation/swiftui/toolbarcontentbuilder/buildexpression(_:))
- [buildLimitedAvailability(_:)](/documentation/swiftui/toolbarcontentbuilder/buildlimitedavailability(_:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
