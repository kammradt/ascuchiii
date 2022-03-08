Gem::Specification.new do |spec|
  spec.name = 'ascuchiii'
  spec.version = '1.1'
  spec.authors = ['Vinicius Kammradt']
  spec.email = ['vinicius.kammradt1@gmail.com']

  spec.summary = 'A gem to get a cute ASCII cuchi easily aka ASCUCHIII'
  spec.homepage = 'https://github.com/kammradt/ascuchiii'
  spec.license = 'MIT'
  spec.required_ruby_version = '>= 2.6.0'

  spec.metadata['homepage_uri'] = spec.homepage
  spec.metadata['source_code_uri'] = 'https://github.com/kammradt/ascuchiii'

  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject do |f|
      (f == __FILE__) || f.match(%r{\A(?:(?:test|spec|features)/|\.(?:git|travis|circleci)|appveyor)})
    end
  end
  spec.bindir = 'bin'
  spec.executables = ['ascuchiii']
  spec.require_paths = ['lib']

  spec.add_development_dependency 'artii', '~> 2.1'
  spec.add_development_dependency 'asciiart', '~> 0.3.0'
end