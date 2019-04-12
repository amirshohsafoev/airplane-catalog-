class AirplaneSerializer < ActiveModel::Serializer
  attributes :id, :manufacture, :name, :family, :range, :typical_seating, :overall_length, :height, :wing_span, :img_length, :img_height, :img_wing_span
end
# :family, :range, :typical_seating, :overall_length, :height, :wing_span, :img_length, :img_height, :img_wing_span
