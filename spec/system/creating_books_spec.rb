require 'rails_helper'

RSpec.describe "CreatingBooks", type: :system do
  before do
    driven_by(:rack_test)
  end

  it 'is valid with valid attributes' do
    book = Book.new(title: 'Example Title', author: 'Example Author')
    expect(book).to be_valid
  end

  it 'is not valid without a title' do
    book = Book.new(author: 'Example Author')
    expect(book).not_to be_valid
  end
end
