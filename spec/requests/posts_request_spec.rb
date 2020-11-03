require 'rails_helper'

RSpec.describe "Posts", type: :request do
  describe '新規投稿ページ' do
    context "新規投稿ページが正しく表示される" do
      before do # ' get posts_new_path 'で新規投稿ページを表示する処理をitの前に行う。
        get posts_new_path
      end
      it 'リクエストは200 OKとなること' do
        expect(response.status).to eq 200 # response.status：この記述することでレスポンスステータスが受け取ることができる。
      end # eq ：表示成功した時のレスポンスステータスの' 200 'を記述している。
      it 'タイトルが正しく表示されていること' do
        expect(response.body).to include("新規投稿") # response.body：htmlのデータが入っている、include：()の中身が含まれているか検証している
      end
    end
  end
end