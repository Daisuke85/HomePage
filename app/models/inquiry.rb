class Inquiry < ActiveRecord::Base

   attr_accessor :name,:kana,:email,:phone,:address,:message

   validates :name,    :presence => {:message => '名前を入力してください'}
   validates :email,   :presence => {:message => 'メールアドレスを入力してください'}
   validates :phone,   :presence => {:message => '電話番号を入力してください'}
   validates :message, :presence => {:message => '本文を入力してください'}
end
