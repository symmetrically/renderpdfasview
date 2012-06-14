require 'test_helper'

class NavigationTest < ActiveSupport::IntegrationCase
  
  test "pdf request sends a pdf as file" do
    
    visit home_path
    click_link 'PDF'
    
    assert_equal 'binary',headers['Content-Transfer-Encoding']
    assert_equal 'attachment; filename="contents.pdf"',headers['Content-Disposition']
    assert_equal 'application/pdf',headers['Content-Type']
    assert_match /Prawn/,page.source
    
    
  end
  
  protected
  
  def headers
    page.response_headers
  end
  
  
end
