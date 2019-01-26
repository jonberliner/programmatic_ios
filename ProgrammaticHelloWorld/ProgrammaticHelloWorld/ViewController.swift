//
//  ViewController.swift
//  ProgrammaticHelloWorld
//
//  Created by Jon  on 1/26/19.
//  Copyright © 2019 Jon . All rights reserved.
//

import UIKit

enum JSB {
    // beginning to make a namespace of reuable things
    static func label(
        // boilerplate for making a label
        text: String,
        font_size: Int=18) -> UILabel {
        let labelView = UILabel()
        
        labelView.text = text
        labelView.font = UIFont.boldSystemFont(ofSize: CGFloat(font_size))
        labelView.textAlignment = .center
        labelView.translatesAutoresizingMaskIntoConstraints = false
        return labelView
    }
}

// making a number message from a bunch of concatenated numbers.
// learing zip, casting, chaining, rendering
let myMessage: UILabel = {
    let list1 = [1,3,5,7]
    let list2 = [2,4,6,8]
    
    let message = zip(list1, list2)
        .map{$0 + $1}
        .map{String($0)}
        .joined()
    
    return JSB.label(text: message)
}()


class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        view.addSubview(myMessage)
        setupLayout()
    }

    private func setupLayout() {
        myMessage.centerXAnchor.constraint(equalTo:
            view.centerXAnchor).isActive = true
        myMessage.centerYAnchor.constraint(equalTo:
            view.centerYAnchor).isActive = true
    }
}
