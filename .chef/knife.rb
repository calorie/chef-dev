base = File.expand_path(File.join('..', '..'), __FILE__)

cookbook_path []
cookbook_path << File.join(base, 'cookbooks')
cookbook_path << File.join(base, 'site-cookbooks')
