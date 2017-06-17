Pod::Spec.new do |s|
  s.name = 'TBVImageProvider'
  s.version = '1.0.0'
  s.summary = 'Provide image for TBVImageBrowser.'
  s.homepage = 'https://github.com/tobevoid/TBVImageProvider'
  s.documentation_url = 'https://github.com/tobevoid/TBVImageProvider'

  s.license =  { :type => 'MIT' }
  s.authors = 'tripleCC'
  s.source = {
    :git => 'https://github.com/tobevoid/TBVImageProvider.git',
    :tag => s.version.to_s,
  }

  s.source_files = 'TBVImageProvider/TBVImageProvider/**/*'

  s.ios.deployment_target     = "8.0"

  s.dependency 'ReactiveObjC', '~> 3.0'
  s.dependency 'TBVImageBrowser', '~> 1.0'
  s.dependency 'TBVAssetsManager'
  s.dependency 'SDWebImage', '~> 4.0'
  s.dependency 'DACircularProgress', '~> 2.0'
end
