module Customizations::SchillerKnapp::Ability

  def self.included(base)
    base.send :include, InstanceMethods
  end

  module InstanceMethods
    def schiller_knapp?(user)
      user.organizations.any? {|o| o.id == Teambox.config.customizations.schiller_knapp.organization_id}
    end
  end

end