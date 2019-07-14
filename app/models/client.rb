class Client < ApplicationRecord
	has_many :jobs

def self.search(search)
  if search
    find(:all, :conditions => ['apeynom LIKE ?', "%#{search}%"])
  else
    find(:all)
  end
end

end
