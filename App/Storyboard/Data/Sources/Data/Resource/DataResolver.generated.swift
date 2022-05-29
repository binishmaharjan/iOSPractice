//
//  Resolver.swift
//  Generated by dikitgen.
//

import DIKit
import Domain
import Foundation
import RxSwift

extension DataResolver {

    func resolveDefaultAPIClient() -> DefaultAPIClient {
        return DefaultAPIClient(dependency: .init())
    }

    func resolveDefaultGitHubRepository(apiClient: APIClient) -> DefaultGitHubRepository {
        return DefaultGitHubRepository(dependency: .init(apiClient: apiClient))
    }

}

