class User < ActiveRecord::Base

  def sf_valid?
    get_lead.valid?
  end

  def sf_has_all_attr_valid?
    get_lead.has_all_attr_valid?
  end

  private
    def get_lead
      SfLeads.new(self)
    end
end
