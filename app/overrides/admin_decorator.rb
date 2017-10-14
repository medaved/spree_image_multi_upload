Deface::Override.new(
  virtual_path: 'spree/admin/images/index',
  insert_after: %q{erb[loud]:contains('button_link_to(Spree.t(:new_image)')},
  text: %q{<%= link_to_with_icon('icon-upload', t('multi_upload.title'), multi_upload_admin_product_images_path(@product), :id => 'multi_upload_images_link', :class => 'button', :remote => true) %>},
  name: 'add_images_multi_upload_button'
)
