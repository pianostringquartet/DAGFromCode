---
title: Search
description: Enable people to search for text or other content within your app.
source: https://developer.apple.com/documentation/swiftui/search
timestamp: 2025-10-29T00:12:52.971Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**API Collection**

# Search

> Enable people to search for text or other content within your app.

## Overview

To present a search field in your app, create and manage storage for search text and optionally for discrete search terms known as *tokens*. Then bind the storage to the search field by applying the searchable view modifier to a view in your app.



As people interact with the field, they implicitly modify the underlying storage and, thereby, the search parameters. Your app correspondingly updates other parts of its interface. To enhance the search interaction, you can also:

- Offer suggestions during search, for both text and tokens.
- Implement search scopes that help people to narrow the search space.
- Detect when people activate the search field, and programmatically dismiss the search field using environment values.

For design guidance, see [searching](/design/Human-Interface-Guidelines/searching) in the Human Interface Guidelines.

## Searching your app’s data model

- [Adding a search interface to your app](/documentation/swiftui/adding-a-search-interface-to-your-app) Present an interface that people can use to search for content in your app.
- [Performing a search operation](/documentation/swiftui/performing-a-search-operation) Update search results based on search text and optional tokens that you store.
- [searchable(text:placement:prompt:)](/documentation/swiftui/view/searchable(text:placement:prompt:)) Marks this view as searchable, which configures the display of a search field.
- [searchable(text:tokens:placement:prompt:token:)](/documentation/swiftui/view/searchable(text:tokens:placement:prompt:token:)) Marks this view as searchable with text and tokens.
- [searchable(text:editableTokens:placement:prompt:token:)](/documentation/swiftui/view/searchable(text:editabletokens:placement:prompt:token:)) Marks this view as searchable, which configures the display of a search field.
- [SearchFieldPlacement](/documentation/swiftui/searchfieldplacement) The placement of a search field in a view hierarchy.

## Making search suggestions

- [Suggesting search terms](/documentation/swiftui/suggesting-search-terms) Provide suggestions to people searching for content in your app.
- [searchSuggestions(_:)](/documentation/swiftui/view/searchsuggestions(_:)) Configures the search suggestions for this view.
- [searchSuggestions(_:for:)](/documentation/swiftui/view/searchsuggestions(_:for:)) Configures how to display search suggestions within this view.
- [searchCompletion(_:)](/documentation/swiftui/view/searchcompletion(_:)) Associates a fully formed string with the value of this view when used as a search suggestion.
- [searchable(text:tokens:suggestedTokens:placement:prompt:token:)](/documentation/swiftui/view/searchable(text:tokens:suggestedtokens:placement:prompt:token:)) Marks this view as searchable with text, tokens, and suggestions.
- [SearchSuggestionsPlacement](/documentation/swiftui/searchsuggestionsplacement) The ways that SwiftUI displays search suggestions.

## Limiting search scope

- [Scoping a search operation](/documentation/swiftui/scoping-a-search-operation) Divide the search space into a few broad categories.
- [searchScopes(_:scopes:)](/documentation/swiftui/view/searchscopes(_:scopes:)) Configures the search scopes for this view.
- [searchScopes(_:activation:_:)](/documentation/swiftui/view/searchscopes(_:activation:_:)) Configures the search scopes for this view with the specified activation strategy.
- [SearchScopeActivation](/documentation/swiftui/searchscopeactivation) The ways that searchable modifiers can show or hide search scopes.

## Detecting, activating, and dismissing search

- [Managing search interface activation](/documentation/swiftui/managing-search-interface-activation) Programmatically detect and dismiss a search field.
- [isSearching](/documentation/swiftui/environmentvalues/issearching) A Boolean value that indicates when the user is searching.
- [dismissSearch](/documentation/swiftui/environmentvalues/dismisssearch) An action that ends the current search interaction.
- [DismissSearchAction](/documentation/swiftui/dismisssearchaction) An action that can end a search interaction.
- [searchable(text:isPresented:placement:prompt:)](/documentation/swiftui/view/searchable(text:ispresented:placement:prompt:)) Marks this view as searchable with programmatic presentation of the search field.
- [searchable(text:tokens:isPresented:placement:prompt:token:)](/documentation/swiftui/view/searchable(text:tokens:ispresented:placement:prompt:token:)) Marks this view as searchable with text and tokens, as well as programmatic presentation.
- [searchable(text:editableTokens:isPresented:placement:prompt:token:)](/documentation/swiftui/view/searchable(text:editabletokens:ispresented:placement:prompt:token:)) Marks this view as searchable, which configures the display of a search field.
- [searchable(text:tokens:suggestedTokens:isPresented:placement:prompt:token:)](/documentation/swiftui/view/searchable(text:tokens:suggestedtokens:ispresented:placement:prompt:token:)) Marks this view as searchable with text, tokens, and suggestions, as well as programmatic presentation.

## Displaying toolbar content during search

- [searchPresentationToolbarBehavior(_:)](/documentation/swiftui/view/searchpresentationtoolbarbehavior(_:)) Configures the search toolbar presentation behavior for any searchable modifiers within this view.
- [SearchPresentationToolbarBehavior](/documentation/swiftui/searchpresentationtoolbarbehavior) A type that defines how the toolbar behaves when presenting search.

## Searching for text in a view

- [findNavigator(isPresented:)](/documentation/swiftui/view/findnavigator(ispresented:)) Programmatically presents the find and replace interface for text editor views.
- [findDisabled(_:)](/documentation/swiftui/view/finddisabled(_:)) Prevents find and replace operations in a text editor.
- [replaceDisabled(_:)](/documentation/swiftui/view/replacedisabled(_:)) Prevents replace operations in a text editor.
- [FindContext](/documentation/swiftui/findcontext) The status of the find navigator for views which support text editing.

## App structure

- [App organization](/documentation/swiftui/app-organization)
- [Scenes](/documentation/swiftui/scenes)
- [Windows](/documentation/swiftui/windows)
- [Immersive spaces](/documentation/swiftui/immersive-spaces)
- [Documents](/documentation/swiftui/documents)
- [Navigation](/documentation/swiftui/navigation)
- [Modal presentations](/documentation/swiftui/modal-presentations)
- [Toolbars](/documentation/swiftui/toolbars)
- [App extensions](/documentation/swiftui/app-extensions)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
