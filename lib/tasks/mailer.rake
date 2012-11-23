namespace :gistar do
  namespace :mail do
    desc 'Mail popular gists'
    task popular: :environment do
      User.find_each(batch_size: 100) do |user|
        StarMailer.popular(user).deliver
      end
      Rails.logger.info "Send popular mail:#{User.count}"
    end
  end
end
