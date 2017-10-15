Deface::Override.new(
  virtual_path: 'spree/admin/images/index',
  replace: %q{erb[loud]:contains('button_link_to(Spree.t(:new_image)')},
  text: %q{<%= button_link_to(t('multi_upload.title'), multi_upload_admin_product_images_path(@product), :id => 'multi_upload_images_link', :class => 'btn-success', icon: 'add', :remote => true) %>},
  name: 'add_images_multi_upload_button'
)
