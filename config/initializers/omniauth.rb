APP_ROOT = Pathname.new(File.expand_path('../../', __FILE__))
# Twitter 
env_config = YAML.load_file(APP_ROOT.join('twitter.yml'))

ENV['TWITTER_KEY'] = env_config['TWITTER_KEY']
ENV['TWITTER_SECRET'] = env_config['TWITTER_SECRET']

env_config = YAML.load_file(APP_ROOT.join('plivo.yml'))

ENV['PLIVO_AUTH_ID'] = env_config['PLIVO_AUTH_ID']
ENV['PLIVO_AUTH_TOKEN'] = env_config['PLIVO_AUTH_TOKEN']



Rails.application.config.middleware.use OmniAuth::Builder do
  provider :twitter, ENV['TWITTER_KEY'], ENV['TWITTER_SECRET']
end

