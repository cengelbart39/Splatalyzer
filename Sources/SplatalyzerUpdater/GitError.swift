//
//  GitError.swift
//  SplatalyzerUpdater
//
//  Created by Christopher Engelbart on 6/13/26.
//

import Foundation

enum GitError: Error {
    case failed(command: String, exitCode: Int32, stdErr: String)
}
