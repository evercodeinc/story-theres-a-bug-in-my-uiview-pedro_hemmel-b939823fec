import UIKit

final class LoadingView: UIView {
    
    private lazy var stackView: UIStackView = {
        let view = UIStackView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private lazy var lblLoading: UILabel = {
        let view = UILabel()
        view.text = "Loading..."
        view.font = UIFont.systemFont(ofSize: 21, weight: .semibold)
        view.textAlignment = .center
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private lazy var activityIndicatorView: UIActivityIndicatorView = {
        let view = UIActivityIndicatorView(style: .large)
        view.startAnimating()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    init() {
        super.init(frame: .zero)
        
        self.backgroundColor = .white
        
        addSubviews()
        configureConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func addSubviews() {
        self.addSubview(self.stackView)
        self.stackView.addSubview(self.lblLoading)
        self.stackView.addSubview(self.activityIndicatorView)
    }
    
    func configureConstraints() {
        NSLayoutConstraint.activate([
            lblLoading.topAnchor.constraint(equalTo: self.stackView.topAnchor),
            lblLoading.rightAnchor.constraint(equalTo: self.stackView.rightAnchor),
            lblLoading.leftAnchor.constraint(equalTo: self.stackView.leftAnchor),
            lblLoading.bottomAnchor.constraint(equalTo: self.activityIndicatorView.topAnchor, constant: -16),
            
            activityIndicatorView.topAnchor.constraint(equalTo: self.lblLoading.bottomAnchor, constant: 16),
            activityIndicatorView.leadingAnchor.constraint(equalTo: self.stackView.leadingAnchor),
            activityIndicatorView.rightAnchor.constraint(equalTo: self.stackView.rightAnchor),
            activityIndicatorView.bottomAnchor.constraint(equalTo: self.stackView.bottomAnchor),
            
            stackView.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            stackView.centerYAnchor.constraint(equalTo: self.centerYAnchor),
            stackView.widthAnchor.constraint(equalToConstant: self.lblLoading.intrinsicContentSize.width)
        ])
    }
}
