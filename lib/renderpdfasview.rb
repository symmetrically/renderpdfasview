require "renderpdfasview/version"

module Renderpdfasview
  require "action_controller"
  
  Mime::Type.register "application/pdf",:pdf
  
  require "prawn"
  
  
  ActionController::Renderers.add :pdf do |filename,options|
    
    pdf = Prawn::Document.new
    pdf.text render_to_string(options)
    send_data(pdf.render,:filename => "#{filename}.pdf",:type => "application/pdf",:disposition => "attachment")
    
  end
end
