class CreateArticleClasifications < ActiveRecord::Migration
  def change
    create_table :article_clasifications do |t|
      t.string :nombre_clasificacion, limit: 15, null: false

      t.timestamps null: false
    end
  end
end
