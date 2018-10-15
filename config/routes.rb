Rails.application.routes.draw do
  resources :students, only: [:index, :new, :create] 
  get '/students/:id', to: 'students#show', as: 'student'
  
end

# describe 'form page' do
#   it 'renders the form with the new action' do
#     visit new_student_path
#     expect(page).to have_content("Student Form")
#   end

#   it 'ensures that the new form submits content and renders form content' do
#     visit new_student_path

#     fill_in 'first_name', with: "Margaery"
#     fill_in 'last_name', with: "Tyrell"

#     click_on "Submit Student"

#     expect(page).to have_content("Margaery")
#   end
# end