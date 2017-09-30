class RemoveAuthorFromArticle < ActiveRecord::Migration[5.1]
  def change
    remove_column :articles, :Author, :string
  end
end
