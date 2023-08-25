# frozen_string_literal: true

class User < ActiveRecord::Base
  devise :database_authenticatable, :registerable,
          :recoverable, :rememberable, :validatable, :confirmable
  include DeviseTokenAuth::Concerns::User

  def self.current_user=(user)
    Thread.current[:user] = user # 現在のスレッドにuserを設定するメソッド
  end

  def self.current_user
    Thread.current[:user] # 現在のスレッドに登録されているユーザーを呼び出す
  end
end
