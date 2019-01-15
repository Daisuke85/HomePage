class HomeController < ApplicationController

 def index
   # 入力画面を表示
   @inquiry = Inquiry.new
 end

 def confirm
   # 入力値のチェック
   @inquiry = Inquiry.new(inquiry_params)
   if @inquiry.valid?
     # OK。確認画面を表示
     # メール送信
     @inquiry = Inquiry.new(inquiry_params)
     @inquiry.save
     InquiryMailer.send_mail(@inquiry).deliver_now
     # ホームへ戻る
     redirect_to root_path, notice: '送信が完了しました！',:anchor=>'header_id'

   else
     # NG。入力画面を再表示
     render :action => 'index'
   end
 end

 private

 def inquiry_params
    params.require(:inquiry).permit(:name,:content,:email,:address,:message,:phone,:kana)
  end

end
