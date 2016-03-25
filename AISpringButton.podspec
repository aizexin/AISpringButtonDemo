#AISpringButton.podspec
Pod::Spec.new do |s|
  s.name         = “AISpringButton”
  s.version      = "1.0.0"
  s.summary      = “实现弹簧效果的button，以及可以改变title位置”

  s.homepage     = "https://github.com/aizexin/AISpringButtonDemo/tree/master/AISpringButton"
  s.license      = 'MIT'
  s.author       = (“aizexin” => “443792431@qq.com” )
  s.platform     = :ios, "7.0"
  s.ios.deployment_target = "7.0"
  s.source       = { :git => "https://github.com/aizexin/AISpringButtonDemo.git", :tag => s.version}
  s.requires_arc = true
