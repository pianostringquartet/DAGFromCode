---
title: init(id:for:makeContent:defaultValue:)
source: https://developer.apple.com/documentation/swiftui/immersivespace/init(id:for:makecontent:defaultvalue:)
timestamp: 2025-10-29T00:10:06.678Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [immersivespace](/documentation/swiftui/immersivespace)

**Initializer**

# init(id:for:makeContent:defaultValue:)

**Available on:** visionOS 26.0+

```swift
nonisolated init<C>(id: String, for type: Data.Type = Data.self, @CompositorContentBuilder makeContent: @escaping (Binding<Data>) -> C, defaultValue: @escaping () -> Data) where Content == CompositorContentBuilder.Content<C>, C : CompositorContent
```

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
