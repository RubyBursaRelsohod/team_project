ActiveAdmin.register_page "Dashboard" do
  menu priority: 1, label: proc{ I18n.t("active_admin.dashboard") }
  content title: proc{ I18n.t("active_admin.dashboard") } do
    div class: "blank_slate_container", id: "dashboard_default_message" do
      span class: "blank_slate" do
        span I18n.t("active_admin.dashboard_welcome.welcome")
        small I18n.t("active_admin.dashboard_welcome.call_to_action")
      end
    end
    columns do
      column do
        panel "Guitars" do
          ul do
            Guitar.all[0, 3].map do |m|
              li link_to(m.product.name, admin_guitar_path(m))
            end            
          end
        end
      end
      column do
        panel "Pianos" do
          ul do
            Piano.all[0, 3].map do |m|
              li link_to(m.product.name, admin_piano_path(m))
            end            
          end
        end
      end
      column do
        panel "Saxophones" do
          ul do
            Saxophone.all[0, 3].map do |m|
              li link_to(m.product.name, admin_saxophone_path(m))
            end            
          end
        end
      end
    end # columns
  end # content
end
