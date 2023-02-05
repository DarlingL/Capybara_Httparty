class HomeVR
    include Capybara::DSL
    def visitpage
      visit 'https://www.vr.com.br/'
    end
  end