# https://github.com/svenfuchs/rails-i18n/blob/master/rails/pluralization/pl.rb

key = lambda do |n|
  n ||= 0
  mod10 = n % 10
  mod100 = n % 100

  if n == 1
    :one
  elsif [2, 3, 4].include?(mod10) && ![12, 13, 14].include?(mod100)
    :few
  elsif ([0, 1] + (5..9).to_a).include?(mod10) || [12, 13, 14].include?(mod100)
    :many
  else
    :other
  end
end

{ :pl => {
    :'i18n' => {
      :plural => {
        :keys => [:one, :few, :many, :other],
        :rule => key
      }
    }
  }
}