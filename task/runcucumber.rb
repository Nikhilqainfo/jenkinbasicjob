require 'cucumber'

class Runcucumber

def runfeaturefile(featurefile)
  
  %x[cucumber #{featurefile}]
end

end
