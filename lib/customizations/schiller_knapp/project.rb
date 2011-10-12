module Customizations::SchillerKnapp::Project

  def self.included(base)
    base.validates_uniqueness_of :name, :case_sensitive => true, :message => I18n.t('projects.errors.name.taken'), :if => lambda {|p| p.organization.schiller_knapp?}
  end

end