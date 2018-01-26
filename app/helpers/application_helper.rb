module ApplicationHelper
  def image_tag(source, options = {})
    source = asset_pack_path("images/#{source}")
    super(source, options)
  end
end
