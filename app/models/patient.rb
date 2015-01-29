class Patient < ActiveRecord::Base
  belongs_to :hospital

  EXPIRED_OPTIONS = [
    ["True", true],
    ["False, false"]
  ]
end
