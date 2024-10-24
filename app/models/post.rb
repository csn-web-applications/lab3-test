class Post < ApplicationRecord
  validates :title, presence: true, length: { in: 6..20 }
end

# Last id = 1
# last id = 50000 (id: 1..50000)
# (id: 1..40000)
# 50001
#


