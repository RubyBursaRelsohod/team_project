ActiveAdmin.register Question do
  permit_params :question, :answer, :user_id, :is_faq
end
