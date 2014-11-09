RailsAdmin.config do |config|
  class RailsAdmin::Config::Fields::Types::Inet < RailsAdmin::Config::Fields::Base
    RailsAdmin::Config::Fields::Types::register(self)
  end

  ### Popular gems integration

  ## == Devise ==
  config.authenticate_with do
    warden.authenticate! scope: :user
  end
  config.current_user_method(&:current_user)

  ## == Cancan ==
  config.authorize_with :cancan
  config.current_user_method &:current_user

  ## == PaperTrail ==
  # config.audit_with :paper_trail, 'User', 'PaperTrail::Version' # PaperTrail >= 3.0.0

  ### More at https://github.com/sferik/rails_admin/wiki/Base-configuration

  config.actions do
    dashboard                     # mandatory
    index                         # mandatory
    new
    export
    bulk_delete
    show
    edit
    delete
    show_in_app

    ## With an audit adapter, you can add:
    # history_index
    # history_show
  end

  config.model Quantity do 
    edit do 
      field :number
      field :date
      field :topics
      field :unit, :belongs_to_association
      field :quantity_type, :belongs_to_association
      field :source, :belongs_to_association
      field :datasets
      field :notes
      field :user_id, :hidden do
        default_value do
          bindings[:view]._current_user.id
        end
      end
    end 
  end
  config.model Chart do 
    edit do 
      field :user_id, :hidden do
        default_value do
          bindings[:view]._current_user.id
        end
      end
      include_all_fields
    end 
  end
  config.model Dataset do 
    edit do 
      field :user_id, :hidden do
        default_value do
          bindings[:view]._current_user.id
        end
      end
      include_all_fields
    end 
  end
end
