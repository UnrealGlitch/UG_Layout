# UG_Layout

## How to use

```swift

contentView.prepareForAutoLayout().pinAll(to: view)

```

```swift

func configureSubviews() {
    view.addSubview(contentView)
    contentView.addSubview(settingsButton)
    contentView.addSubview(playButton)
    
    contentView.prepareForAutoLayout()
        .pinAll()
    
    settingsButton.prepareForAutoLayout()
        .pin(width: 100)
        .pin(height: 50)
        .pinLeft(constraintValue: 100)
        .pinTop(constraintValue: 500)
    
    playButton.prepareForAutoLayout()
        .pinTop(to: settingsButton, constraintValue: 50)
        .pinLeft(constraintValue: 200)
        .pinRight()
        .pin(height: 60)
}

```
