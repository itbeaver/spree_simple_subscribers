Deface::Override.new(
  virtual_path: 'spree/layouts/admin',
  name: 'subscribers_admin_sidebar_menu',
  insert_bottom: '#main-sidebar',
  partial: 'spree/admin/shared/subscribers_sidebar_menu'
)
