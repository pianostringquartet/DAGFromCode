//
//  SwiftUIVisitors.swift
//  DAGFromCode
//
//  Created by Christian J Clampitt on 9/25/25.
//

import Foundation
import SwiftSyntax

// MARK: - SwiftUI Helper Functions

// Helper functions for SwiftUI parsing (not extensions due to Swift limitations)
// These can be called from the main ProjectDataBuilderVisitor class

/// Detects if a syntax node represents a SwiftUI view
/// - Parameter node: The syntax node to analyze
/// - Returns: The corresponding PrototypeLayerKind if detected, nil otherwise
func detectSwiftUIView(_ node: SyntaxProtocol) -> PrototypeLayerKind? {
    // TODO: Implement SwiftUI view detection logic
    // Should detect Rectangle(), Ellipse(), etc.
    // Example logic:
    // if let functionCall = node.as(FunctionCallExprSyntax.self),
    //    let declRef = functionCall.calledExpression.as(DeclReferenceExprSyntax.self) {
    //     switch declRef.baseName.text {
    //     case "Rectangle":
    //         return .rectangle
    //     case "Ellipse":
    //         return .ellipse
    //     default:
    //         return nil
    //     }
    // }
    return nil
}

/// Detects if a syntax node represents a SwiftUI view modifier
/// - Parameter node: The syntax node to analyze
/// - Returns: The corresponding PrototypeLayerInputKind if detected, nil otherwise
func detectViewModifier(_ node: SyntaxProtocol) -> PrototypeLayerInputKind? {
    // TODO: Implement view modifier detection logic
    // Should detect .opacity(), .scaleEffect(), etc.
    // Example logic:
    // if let memberAccess = node.as(MemberAccessExprSyntax.self) {
    //     switch memberAccess.declName.baseName.text {
    //     case "opacity":
    //         return .opacity
    //     case "scaleEffect":
    //         return .scaleEffect
    //     default:
    //         return nil
    //     }
    // }
    return nil
}

/// Creates a PrototypeLayer for a SwiftUI view
/// - Parameters:
///   - nodeId: The UUID for the layer node
///   - layerKind: The kind of SwiftUI view
/// - Returns: A PrototypeLayer instance
func createPrototypeLayer(nodeId: UUID, layerKind: PrototypeLayerKind) -> PrototypeLayer {
    return PrototypeLayer(nodeId: nodeId, layer: layerKind)
}

/// Creates a DAGLayerInputNode for a view modifier
/// - Parameters:
///   - layerInput: The kind of view modifier
///   - input: The node input for the modifier
/// - Returns: A DAGNodeType for the layer input
func createLayerInputNode(layerInput: PrototypeLayerInputKind, input: NodeInput) -> DAGNodeType {
    return DAGNodeBuilder.createLayerInputNode(layerInput: layerInput, input: input)
}

// MARK: - Future SwiftUI Integration

// These helper functions can be called from visitor methods in SwiftSyntaxVisitor.swift:
// - Call detectSwiftUIView() from visit(_ node: FunctionCallExprSyntax)
// - Call detectViewModifier() from visit(_ node: MemberAccessExprSyntax)
// - Create PrototypeLayer instances for views
// - Create DAGLayerInputNode instances for view modifiers
// - Link view modifiers to their parent views