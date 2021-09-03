import UIKit

extension UIView {
   
    func pinAll(to parentView: UIView) {
        leftAnchor.constraint(equalTo: parentView.leftAnchor).isActive = true
        rightAnchor.constraint(equalTo: parentView.rightAnchor).isActive = true
        topAnchor.constraint(equalTo: parentView.topAnchor).isActive = true
        bottomAnchor.constraint(equalTo: parentView.bottomAnchor).isActive = true
    }
    
    func pinAll() {
        guard let parentView = superview else {
            return
        }
        pinAll(to: parentView)
    }
    
    @discardableResult
    func prepareForAutoLayout() -> Self {
        translatesAutoresizingMaskIntoConstraints = false
        return self
    }
    
    @discardableResult
    func pinCenter() -> Self {
        guard let parentView = superview else {
            return self
        }
        centerXAnchor.constraint(equalTo: parentView.centerXAnchor).isActive = true
        centerYAnchor.constraint(equalTo: parentView.centerYAnchor).isActive = true
        return self
    }
    
    @discardableResult
    func pinCenterX() -> Self {
        guard let parentView = superview else {
            return self
        }
        centerXAnchor.constraint(equalTo: parentView.centerXAnchor).isActive = true
        return self
    }
    
    @discardableResult
    func pinCenterY() -> Self {
        guard let parentView = superview else {
            return self
        }
        centerYAnchor.constraint(equalTo: parentView.centerYAnchor).isActive = true
        return self
    }
    
    @discardableResult
    func pinLeft(constraintValue: CGFloat = 0) -> Self {
        guard let parentView = superview else {
            return self
        }
        leftAnchor.constraint(equalTo: parentView.leftAnchor, constant: constraintValue).isActive = true
        return self
    }
    
    @discardableResult
    func pinRight(constraintValue: CGFloat = 0) -> Self {
        guard let parentView = superview else {
            return self
        }
        rightAnchor.constraint(equalTo: parentView.rightAnchor, constant: -constraintValue).isActive = true
        return self
    }
    
    @discardableResult
    func pinBottom(constraintValue: CGFloat = 0) -> Self {
        guard let parentView = superview else {
            return self
        }
        bottomAnchor.constraint(equalTo: parentView.bottomAnchor, constant: -constraintValue).isActive = true
        return self
    }
    
    @discardableResult
    func pinTop(constraintValue: CGFloat = 0) -> Self {
        guard let parentView = superview else {
            return self
        }
        topAnchor.constraint(equalTo: parentView.topAnchor, constant: constraintValue).isActive = true
        return self
    }
    
    @discardableResult
    func pinLeft(to secondView: UIView, constraintValue: CGFloat = 0) -> Self {
        leftAnchor.constraint(equalTo: secondView.rightAnchor, constant: constraintValue).isActive = true
        return self
    }
    
    @discardableResult
    func pinRight(to secondView: UIView, constraintValue: CGFloat = 0) -> Self {
        rightAnchor.constraint(equalTo: secondView.leftAnchor, constant: constraintValue).isActive = true
        return self
    }
    
    @discardableResult
    func pinBottom(to secondView: UIView, constraintValue: CGFloat = 0) -> Self {
        bottomAnchor.constraint(equalTo: secondView.topAnchor, constant: constraintValue).isActive = true
        return self
    }
    
    @discardableResult
    func pinTop(to secondView: UIView, constraintValue: CGFloat = 0) -> Self {
        topAnchor.constraint(equalTo: secondView.bottomAnchor, constant: constraintValue).isActive = true
        return self
    }
    
    @discardableResult
    func pin(width: CGFloat) -> Self {
        widthAnchor.constraint(equalToConstant: width).isActive = true
        return self
    }
    
    @discardableResult
    func pin(height: CGFloat) -> Self {
        heightAnchor.constraint(equalToConstant: height).isActive = true
        return self
    }
    
}

