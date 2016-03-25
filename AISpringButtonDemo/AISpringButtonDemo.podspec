
Pod::Spec.new do |s|
  s.name         = "AISpringButtonDemo"
  s.version      = "1.0"
  s.summary      = "弹簧效果按钮"
  s.description  = <<-DESC
                   DESC
  s.homepage     = "https://github.com/aizexin/AISpringButtonDemo"
  s.license      = "MIT (example)"
  s.author             = { "aizexin" => "email@address.com" }
  s.source       = { :git => "https://github.com/aizexin/AISpringButtonDemo.git", :tag => "v1.0" }

  s.source_files  = "AISpringButton", "AISpringButton/**/*.{h,m}"
  s.exclude_files = "AISpringButton"
 end
