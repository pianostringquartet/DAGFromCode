---
title: init(id:in:behavior:)
description: Creates a new .
source: https://developer.apple.com/documentation/swiftui/hovereffectgroup/init(id:in:behavior:)
timestamp: 2025-10-29T00:11:21.064Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [hovereffectgroup](/documentation/swiftui/hovereffectgroup)

**Initializer**

# init(id:in:behavior:)

**Available on:** visionOS 2.0+

> Creates a new .

```swift
init(id: String?, in namespace: Namespace.ID, behavior: HoverEffectGroup.Behavior = .activatesGroup)
```

## Parameters

**id**

An optional id to give the group. If provided, the group will be uniquely identified by combining the id and the namespace.



**namespace**

The namespace that identifies the group.



**behavior**

How the effect will behave relative to other effects in the group.



## Return Value

A new HoverEffectGroup

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
