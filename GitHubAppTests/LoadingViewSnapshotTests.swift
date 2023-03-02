//
//  LoadingViewSnapshotTests.swift
//  GitHubAppTests
//
//  Created by Rodrigo Soares on 01/02/23.
//

import SnapshotTesting
import XCTest
@testable import GitHubApp

class LoadingViewSnapshotTests: XCTestCase {
    
    func testLoadingView() {
        
        let loadingView = LoadingView()
        
        assertSnapshot(matching: loadingView,
                       as: .image(size: CGSize(width: 350, height: 700)))
    }
}
