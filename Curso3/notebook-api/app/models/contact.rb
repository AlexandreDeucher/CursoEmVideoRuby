class Contact < ApplicationRecord
  #Association
  belongs_to :kind #, optional: true 
  has_many :phones
  has_one :address
  accepts_nested_attributes_for :phones, allow_destroy: true
  accepts_nested_attributes_for :address, update_only: true
  
  def as_json(options={})
    h = super(options)
    h[:birthdate] = (I18n.l(self.birthdate) unless self.birthdate.blank?)
    h
  end 
  
  
  
  
  
  
  
  # def birthdate_br
    #  I18n.l(self.birthdate) unless self.birthdate.blank?
    # end

    # def to_br
    #   {
    #     name: self.name,
    #     email: self.email,
    #     birthdate: (I18n.l(self.birthdate) unless self.birthdate.blank?)
    #   }
    # end
    #  def author
    #    Faker::Name.name
    #  end 
  
    # def kind_description
    #   self.kind&.description
    # end
  
    # def as_json(options={})
    #   super(methods: [:kind_description, :kind_id],root: true)
     
    # end

     def hello
       I18n.t('hello')
     end

     def i18n
       I18n.default_locale
     end
end
