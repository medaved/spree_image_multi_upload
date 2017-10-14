Spree::Admin::ImagesController.class_eval do
  def create
    product = Spree::Product.where('slug' => params['product_id'])
    params[:image][:attachment].each do |attachment_object|
      image = Spree::Image.new
      image.attachment = attachment_object
      image.viewable_id = params[:image][:viewable_id] # product[0].id
      image.type = 'Spree::Image'
      image.viewable_type = 'Spree::Variant'
      image.save
    end
    redirect_to '/admin/products/' + product[0].slug + '/images' # admin_product_url(product)
  end

  def multi_upload; end

  def new_actions
    %I[new create multi_upload]
  end
end
