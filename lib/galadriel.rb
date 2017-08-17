# frozen_string_literal: true

module Galadriel

  class << self
    attr_accessor :hash_array
  end

  def self.parse(params_value, debug = false)

    # initialize hash array to array
    self.hash_array = []

    # to generate hash array
    create_hash_array(params_value)

    # to assign values to hash array
    assign_values(params_value)

    show_debug(debug)

    self.hash_array
  end

  # Assign values to hash array
  # Require hash array created
  # Work if value dont is nested value
  def self.assign_values(hash)
    hash.each_pair do |key, values|
      values.each_with_index do |value, index|
        self.hash_array[index][key.to_sym] = value
      end
    end
  end

  # Create hash array based hash with null values using create_hash
  def self.create_hash_array(hash)
    hash.each_pair do |key, values|
      values.each do |value|
        self.hash_array.push(create_hash(hash))
      end
      break
    end
  end

  # Create an has with all keys based params keys
  def self.create_hash(hash)
    new_hash = Hash.new
    hash.each_pair do |key|
      new_hash[key] = nil
    end
    new_hash.symbolize_keys
  end

  def self.show_debug(show)
    puts JSON.pretty_generate(self.hash_array) if show
  end

end
