class QiitaItem < ApplicationRecord
    has_one_attached :image

    def default_image
        if image.attached?
          image
        else
          # デフォルトの画像のURLやパスを返す
          # 例: "default_image.jpg" という名前のデフォルト画像を public フォルダに配置している場合
          ActionController::Base.helpers.asset_path("1_works.jpg")
        end
    end
end
