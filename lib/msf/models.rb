# Load all of the MSF models
MSF_ROOT = File.expand_path(File.dirname(__FILE__))
Dir.glob("#{MSF_ROOT}/models/*.rb").each do |r| require r end
Dir.glob("#{MSF_ROOT}/models/*/*.rb").each do |r| require r end  
