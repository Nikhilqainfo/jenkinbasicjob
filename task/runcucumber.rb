require 'cucumber'

class Runcucumber

def runfeaturefile(featurefile)
  p featurefile
  %x[cucumber #{featurefile}]
end
  
end
