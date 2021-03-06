# frozen_string_literal: true

require 'rails_helper' # Test helper

RSpec.describe User, type: :model do
  it 'Nickname e gore siralama' do
    User.create(email: 'Andy@Lindeman')
    User.create(email: 'David@Chelimsky')

    expect(User.order('email') == ['David@Chelimsky', 'Andy@lindeman'])
  end
end
