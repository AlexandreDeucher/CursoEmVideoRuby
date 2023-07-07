class PhoneSerializer < ActiveModel::Serializer
  attributes :id, :number

  belongs_to :contact do 
    link(:related) {contact_phones_url(object.id)}
  end
end
