web: bundle exec rails server -p $PORT -e $RAILS_ENV
RAILS_ENV=production bundle exec rake assets:precompile
