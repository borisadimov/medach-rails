class ArticleSerializer < ActiveModel::Serializer
  attributes :id, :body, :image, :title, :author, :infographic, :redaction, :created_at, :tag_list, :shorttext, :origin, :translate, :fixed

  def tag_list
    object.tag_list
  end


end