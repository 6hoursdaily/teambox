module Customizations::SchillerKnapp::Organization

  def self.included(base)
    base.send :include, InstanceMethods
  end

  module InstanceMethods
    def schiller_knapp?
      self.id == Teambox.config.customizations.schiller_knapp.organization_id
    end
  end

end