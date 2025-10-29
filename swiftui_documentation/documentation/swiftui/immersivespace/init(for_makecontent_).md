---
title: init(for:makeContent:)
source: https://developer.apple.com/documentation/swiftui/immersivespace/init(for:makecontent:)
timestamp: 2025-10-29T00:09:20.714Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [immersivespace](/documentation/swiftui/immersivespace)

**Initializer**

# init(for:makeContent:)

**Available on:** visionOS 26.0+

```swift
nonisolated init<C>(for type: Data.Type, @CompositorContentBuilder makeContent: @escaping (Binding<Data?>) -> C) where Content == CompositorContentBuilder.Content<C>, C : CompositorContent
```

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
