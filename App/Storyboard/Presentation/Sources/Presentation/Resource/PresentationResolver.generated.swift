//
//  Resolver.swift
//  Generated by dikitgen.
//

import DIKit
import Domain
import Foundation
import RxCocoa
import RxSwift
import UIKit

extension PresentationResolver {

    func resolveDetailViewController(url: URL, title: String) -> DetailViewController {
        let detailViewModel = resolveDetailViewModel(url: url, title: title)
        return DetailViewController(dependency: .init(viewModel: detailViewModel))
    }

    func resolveDetailViewModel(url: URL, title: String) -> DetailViewModel {
        return DetailViewModel(dependency: .init(url: url, title: title))
    }

    func resolveGitHubSearchUseCase() -> GitHubSearchUseCase {
        return provideGitHubSearchUseCase()
    }

    func resolveListViewController() -> ListViewController {
        let listViewModel = resolveListViewModel()
        let presentationResolver = resolvePresentationResolver()
        return ListViewController(dependency: .init(viewModel: listViewModel, resolver: presentationResolver))
    }

    func resolveListViewModel() -> ListViewModel {
        let gitHubSearchUseCase = resolveGitHubSearchUseCase()
        return ListViewModel(dependency: .init(searchUseCase: gitHubSearchUseCase))
    }

    func resolvePresentationResolver() -> PresentationResolver {
        return providePresentationResolver()
    }

    func resolveRootViewController() -> RootViewController {
        let presentationResolver = resolvePresentationResolver()
        return RootViewController(dependency: .init(resolver: presentationResolver))
    }

}

