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


    s.subspec 'Libs' do |cs|
        cs.source_files = 'Speex-iOS/speex/Libs/*.{h,c,cpp,m}'

        cs.subspec 'libogg' do |ogg|
            ogg.source_files = 'Speex-iOS/speex/Libs/libogg/**/*'
        end

        cs.subspec 'libspeex' do |speex|
            speex.source_files = 'Speex-iOS/speex/Libs/libspeex/**/*'
        end
    end
    s.subspec 'Codec' do |cs|
        cs.source_files = 'Speex-iOS/speex/Codec/**/*'
        cs.dependency 'Speex-iOS/Libs'
    end
end
