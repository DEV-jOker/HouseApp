module ApplicationHelper

  def get_image(url)
    cl_image_tag("BrainHouseSample/Images/#{url}", :version => "16113943033")
  end

  
end
