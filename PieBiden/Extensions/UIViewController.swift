//
//  UIViewController.swift
//  PieBiden
//
//  Created by BrainX on 16/06/2022.
//

import Foundation
import UIKit
extension UIViewController {
    static func instantiate(from storyboardName: StoryBoardName) -> Self {
        let storyboard = UIStoryboard(name: storyboardName.rawValue, bundle: nil)
        print(String(describing: self))
        return storyboard.instantiateViewController(withIdentifier: String(describing: self)) as! Self
    }
    func getViewController<T: UIViewController>(storyboardName name: StoryBoardName) -> T {
        let storyBoard = UIStoryboard(name: name.rawValue , bundle: nil)// Story board initiallization
        let controller = storyBoard.instantiateViewController(withIdentifier: String(describing: T.self)) as! T
        return controller
    }
}
enum StoryBoardName: String{
    case main = "Main"
}

