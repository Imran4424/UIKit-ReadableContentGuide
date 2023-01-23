//
//  ViewController.swift
//  ReadableContentGuide
//
//  Created by Shah Md Imran Hossain on 23/1/23.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setupViews()
    }

    func setupViews() {
        let redView = UIView()
        redView.translatesAutoresizingMaskIntoConstraints = false
        redView.backgroundColor = .red
        
        let label = makeLabel(withText: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Dictumst quisque sagittis purus sit amet volutpat consequat mauris nunc. Aliquet nec ullamcorper sit amet risus. Potenti nullam ac tortor vitae purus. Sed risus ultricies tristique nulla. Massa enim nec dui nunc mattis enim ut. Lobortis feugiat vivamus at augue eget arcu. Id velit ut tortor pretium viverra suspendisse potenti nullam. Augue eget arcu dictum varius duis at consectetur lorem. Dignissim enim sit amet venenatis urna. Ut morbi tincidunt augue interdum velit euismod in. Et leo duis ut diam quam nulla porttitor massa id. Orci nulla pellentesque dignissim enim sit amet venenatis urna cursus. Neque convallis a cras semper auctor neque vitae tempus quam. Leo duis ut diam quam nulla porttitor massa id neque. Est ullamcorper eget nulla facilisi etiam dignissim diam. A diam sollicitudin tempor id eu nisl nunc. Aliquam nulla facilisi cras fermentum odio eu feugiat pretium nibh. Cras pulvinar mattis nunc sed blandit libero volutpat sed cras. Diam in arcu cursus euismod quis viverra nibh.")
        
//        view.addSubview(redView)
        view.addSubview(label)
        
        // redView
//        NSLayoutConstraint.activate([
//            redView.topAnchor.constraint(equalTo: view.readableContentGuide.topAnchor),
//            redView.leadingAnchor.constraint(equalTo: view.readableContentGuide.leadingAnchor),
//            redView.trailingAnchor.constraint(equalTo: view.readableContentGuide.trailingAnchor),
//            redView.bottomAnchor.constraint(equalTo: view.readableContentGuide.bottomAnchor)
//        ])
        
        // label
        NSLayoutConstraint.activate([
            label.topAnchor.constraint(equalTo: view.readableContentGuide.topAnchor),
            label.leadingAnchor.constraint(equalTo: view.readableContentGuide.leadingAnchor),
            label.trailingAnchor.constraint(equalTo: view.readableContentGuide.trailingAnchor),
            label.bottomAnchor.constraint(equalTo: view.readableContentGuide.bottomAnchor)
        ])
    }
}

// MARK: - Factory methods
extension ViewController {
    func makeLabel(withText text: String) -> UILabel {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = text
        label.backgroundColor = .yellow
        label.numberOfLines = 0
        label.font = UIFont.systemFont(ofSize: 20)
        
        return label
    }
}
