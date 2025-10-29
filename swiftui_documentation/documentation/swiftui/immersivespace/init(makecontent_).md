---
title: init(makeContent:)
source: https://developer.apple.com/documentation/swiftui/immersivespace/init(makecontent:)
timestamp: 2025-10-29T00:11:07.252Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [immersivespace](/documentation/swiftui/immersivespace)

**Initializer**

# init(makeContent:)

**Available on:** visionOS 26.0+

```swift
nonisolated init<C>(@CompositorContentBuilder makeContent: @escaping () -> C) where Content == CompositorContentBuilder.Content<C>, Data == Never, C : CompositorContent
```

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
