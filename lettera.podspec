Pod::Spec.new do |s|
  s.name = 'lettera'
  s.ios.deployment_target = '9.0'
  s.osx.deployment_target = '10.11'
  s.tvos.deployment_target = '9.0'
  s.version = '1.0.0'
  s.source = { :git => 'git@github.com:OpenAPITools/openapi-generator.git', :tag => 'v1.0.0' }
  s.authors = 'OpenAPI Generator'
  s.license = 'Proprietary'
  s.homepage = 'https://github.com/OpenAPITools/openapi-generator'
  s.summary = 'lettera Swift SDK'
  s.source_files = 'lettera/Classes/**/*.swift'
  s.dependency 'Alamofire', '~> 4.7.0'
end
