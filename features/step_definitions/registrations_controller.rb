Given(/^that I am on the ([^"]*)/) do |page_name|
  case page_name
  when 'homepage'
    visit(root_path)
  end
end

When(/^I follow ([^"]*)/) do |button|
  case button
  when 'Sign Up'
    page.find('btn-user-signup').click
  end
  case button
  when 'Sign up'
    page.find('btn-company-signup').click
  end
  case button
  when 'sign in'
    page.find('btn-user-singin')
  end
  case button
  when 'Nova Quest'
    page.find('btn-create-quest')
  end
end

Then(/^I should be on the page ([^"]*)/) do |arg1|
  case arg1
  when "Sign Up"
    expect(page).to current_path(new_user_registration_path)   
  end
  case arg1
  when "Dashboard"
    expect(page).to current_path(dashboard_path)  
  end
  case arg1  
  when "Sign up"
    expect(page).to current_path(new_company_registration_path)
  end
  case arg1
  when 'sign in'
    expect(page).to current_path(new_user_session_path)
  end
  case arg1
  when "New Quest Page"
    expect(page).to current_path(new_quest_path)
  end
  case arg1
  when "Quest"
    expect(page).to current_path(quest_path)
  end
end

When("I fill in {string} with {string}") do |param, filler|
  case param
  when "{string}"
    page.find(param).fill_in(param, with: filler)
  end
end

When(/^I press ([^"]*)/) do |button|
  case button
  when 'Sign Up'
    page.find('Sign Up').click
  end
  case button
  when 'Sign In'
    page.find('Log In').click
  end
  case button
  when 'Empresa?'
    page.find('Empresa?').click
  end
  case button
  when 'Adicionar pergunta'
    page.find('Adicionar pergunta').click
  end
  case button
  when 'Concluído'
    page.find('Concluído').click
  end
end


When (/^I generate ([^"]*)/) do |string|
  i = 1
  while i <= string.to_i do
    page.find('Adicionar pergunta').click
    page.find("Perguntas").fill_in("Perguntas", with: "question_"+number)
    i = i+1
  end
end