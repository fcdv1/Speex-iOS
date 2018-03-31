Pod::Spec.new do |s|
    s.name             = 'Speex-iOS'
    s.version          = '0.1.0'
    s.summary          = <<-DESC
                            remove unnecessary file's of other platform,make it run on the iOS
                         DESC
    s.description      = <<-DESC
        you can find more detail at https://github.com/xiph/speex.git,or go to the speex homepage https://www.speex.org
    DESC
    s.license          = { :type => 'MIT', :file => 'LICENSE' }
    s.homepage         = 'https://www.speex.org/'
    s.author           = { 'ZFH' => '245185601@qq.com' }
    s.source           = { :git => 'https://github.com/fcdv1/Speex-iOS.git', :tag => s.version.to_s }
    s.ios.deployment_target = '8.0'
    s.source_files = 'Speex-iOS/speex/**/*'
end
