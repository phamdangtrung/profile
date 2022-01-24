# frozen_string_literal: true

# Top level document?
class TestController < ActionController::API
  def list
    list = { a: 1, b: 2 }
  end
end
