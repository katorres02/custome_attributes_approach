module CustomeAttributesHelper
  def custome_attributes_helper(form)
    form.fields_for :custome_attributes_value, custome_attributes_struct(form)  do |form|
      @custome_attributes.each do |custome_attribute|
        yield(custome_attribute, form)
      end
    end
  end

  def custome_attributes_struct(form)
    OpenStruct.new(form.object.custome_attributes_value)
  end

  def field_builder_helper(custome_attribute, form)
    FieldBuilder.field(self, custome_attribute, form)
  end

  class FieldBuilder
    attr_reader :context, :custome_attribute, :form

    def self.field(context, custome_attribute, form)
      new(context, custome_attribute, form).field
    end

    def initialize(context, custome_attribute, form)
      @context = context
      @custome_attribute = custome_attribute
      @form = form
    end

    def field
      [
        field_label.to_s,
        send("#{custome_attribute.field_type.downcase}_field").to_s
      ].join.html_safe
    end

    private

    def field_name
      @field_name ||= custome_attribute.field_name.gsub(' ', '_').to_sym
    end
    
    def field_label
      form.label(field_name)
    end

    def text_field
      form.text_field(field_name)
    end

    def boolean_field
      form.check_box(field_name)
    end

    def date_field
      form.date_field(field_name)
    end

    def integer_field
      form.text_field(field_name, type: :number)
    end
  end
end
