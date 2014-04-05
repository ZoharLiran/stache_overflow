APP_ROOT = Pathname.new(File.expand_path('../../', __FILE__))
# Twitter 
env_config = YAML.load_file(APP_ROOT.join('twitter.yml'))

ENV['TWITTER_KEY'] = env_config['TWITTER_KEY']
ENV['TWITTER_SECRET'] = env_config['TWITTER_SECRET']

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :twitter, ENV['TWITTER_KEY'], ENV['TWITTER_SECRET']
end

