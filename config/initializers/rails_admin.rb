RailsAdmin.config do |config|
  class RailsAdmin::Config::Fields::Types::Inet < RailsAdmin::Config::Fields::Base
    RailsAdmin::Config::Fields::Types::register(self)
  end

  config.main_app_name = ["Statsy", "Dashboard"]
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
    object_label_method do
      :custom_label_method
    end 
    list do
      field :topics
      field :number
      field :date
      field :unit, :belongs_to_association
      field :quantity_type, :belongs_to_association
      field :sources
      field :datasets
    end
    edit do 
      field :number
      field :date
      field :topics
      field :unit, :belongs_to_association
      field :quantity_type, :belongs_to_association
      field :sources
      field :datasets
      field :notes
      field :user_id, :hidden do
        default_value do
          bindings[:view]._current_user.id
        end
      end
    end
  end

  def custom_label_method
    topic_string = String.new
    self.topics.each do |topic|
      topic_string += "#{topic.name} "
    end
    topic_string + "#{self.number} #{self.date}"
  end

  config.model Chart do 
    list do
      field :name
      field :chart_type
      field :datasets
    end
    edit do 
      field :name
      field :chart_type
      field :colors
      field :datasets
      field :topics
      field :tooltip
      field :user_id, :hidden do
        default_value do
          bindings[:view]._current_user.id
        end
      end
    end 
  end
  config.model Dataset do 
    list do
      field :name
      field :quantities
      field :charts
    end
    edit do 
      field :name
      field :quantities
      field :user_id, :hidden do
        default_value do
          bindings[:view]._current_user.id
        end
      end
    end 
  end
  config.model ChartType do 
    list do
      field :name
      field :charts
    end
  end
  config.model QuantityType do 
    list do
      field :name
      field :quantities
    end
  end
  config.model Source do 
    list do
      field :title
      field :URL
      field :quantities
    end
  end
  config.model Topic do 
    list do
      field :name
      field :description
      field :quantities
      field :charts
    end
  end
  config.model Unit do 
    list do
      field :name
      field :quantities
    end
  end
end