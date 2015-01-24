Pod::Spec.new do |s|
  s.name         = "WeatherIconsKit"
  s.version      = "1.0.0"
  s.summary      = "WeatherIcons font library for iOS"
  s.homepage     = "https://github.com/gscalzo/WeatherIconsKit"
  s.screenshots  = "http://i3.minus.com/jCy98cCvrjLiP.png"
  s.license      = 'MIT'
  s.author       = { "Giordano Scalzo" => "giordano.scalzo@gmail.com" }
  s.source       = { :git => "https://github.com/gscalzo/WeatherIconsKit.git", :tag => '1.0.0' }
  s.platform     = :ios, '6.0'
  s.ios.frameworks = 'UIKit', 'CoreText'
  s.source_files = ['WeatherIconsKit/WeatherIconsKit.h', 'WeatherIconsKit/FAKIcon.{h,m}', 'WeatherIconsKit/WIKFontIcon.{h,m}']
  s.resource  = 'WeatherIconsKit/WeatherIcons-Regular.otf'
  s.requires_arc = true
end
