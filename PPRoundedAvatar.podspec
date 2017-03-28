
Pod::Spec.new do |s|

  s.name         = "PPRoundedAvatar"
  s.version      = "0.0.1"
  s.summary      = "A high-performance rounded avatar control."

  s.description  = <<-DESC
                   DESC

  s.homepage     = "https://github.com/VernonVan/PPRoundedAvatar"

  s.license      = "MIT"

  s.author             = { "VernonVan" => "1395872519@qq.com" }
  s.social_media_url   = "https://vernonvan.github.io/"

  s.platform     = :ios, "7.0"

  s.source       = { :git => "https://github.com/VernonVan/PPRoundedAvatar.git", :tag => "0.0.1" }

  s.source_files  = "PPRoundedAvatar/**/*.{h,m}"

  s.framework  = 'UIKit'

end
