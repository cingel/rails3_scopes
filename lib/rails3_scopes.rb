module Rails3Scopes
  def self.included(base)
    base.named_scope :where, lambda{ |conditions| { :conditions => conditions } }
    base.named_scope :order, lambda{ |order| { :order => order } }
    base.named_scope :limit, lambda{ |n| { :limit => n } }
    base.named_scope :include, lambda{ |i| { :include => i } }
  end
end