Spree::Admin::ImagesController.class_eval do
  def create
    params[:image][:attachment].each do |attachment_object|
      image = Spree::Image.new
      image.attachment = attachment_object
      image.viewable_id = params[:image][:viewable_id] # product[0].id
      image.type = 'Spree::Image'
      image.viewable_type = 'Spree::Variant'
      if image.save
        result = {
          files: [
            image.to_jq_upload.merge(
              # TODO: this is a dirty hack. See model decorator TODO for details
              edit_url: edit_admin_product_image_url(image.viewable.product, image),
              delete_url: admin_product_image_url(image.viewable.product, image)
            )
          ]
        }
        respond_to do |format|
          format.html { render json: result, content_type: 'text/html', layout: false }
          format.json { render json: result, status: :created }
        end
      else
        respond_to do |format|
          format.html { render action: 'index' }
          format.json { render json: image.errors, status: :unprocessable_entity, layout: false }
        end
      end
    end
  end

  def multi_upload; end

  def new_actions
    %I[new create multi_upload]
  end
end
