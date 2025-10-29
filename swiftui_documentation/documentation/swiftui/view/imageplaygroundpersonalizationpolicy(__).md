---
title: imagePlaygroundPersonalizationPolicy(_:)
description: Policy determining whether to support the usage of people in the playground or not.
source: https://developer.apple.com/documentation/swiftui/view/imageplaygroundpersonalizationpolicy(_:)
timestamp: 2025-10-29T00:14:07.476Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# imagePlaygroundPersonalizationPolicy(_:)

**Available on:** iOS 18.4+, iPadOS 18.4+, Mac Catalyst 18.4+, macOS 15.4+, visionOS 2.4+

> Policy determining whether to support the usage of people in the playground or not.

```swift
nonisolated func imagePlaygroundPersonalizationPolicy(_ policy: ImagePlaygroundPersonalizationPolicy = .automatic) -> some View
```

## Parameters

**policy**

Policy determining whether personalization is enabled or not.



## Return Value

An image playground sheet that does or does not support personalization, based on the `enabled` flag.

## Discussion

Enabling people support will allow the user to condition image generation using:

- A person from their system Photos library
- A character represented by an appearance and a skin tone

Personalization options are available through several user interfaces, including:

- A people picker
- Detection of people names in the prompt text field
- Importing images containing people faces from the system photo library

Enabled by default when the modifier is not set or when the policy is set to `automatic`.

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
