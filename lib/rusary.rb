# frozen_string_literal: true

require_relative "rusary/version"
require_relative "mysteries.rb"
require "date"

module Rusary
  class Error < StandardError; end
  class Parser
    def self.start
      date = Date.today.strftime("%A")
      if date == "Monday" || date == "Saturday"
        Mysteries::JoyfulM.read
      elsif date == "Tuesday" || date == "Friday"
        Mysteries::SorrowfulM.read
      elsif date == "Wednesday" || date == "Sunday"
        Mysteries::GloriousM.read
      elsif date == "Thursday"
        Mysteries::LuminousM.read
      else
        raise Exception.new "Invalid weekday '#{date}' specified for Rusary parser. Expected a valid weekday."
      end
    end
  end
end

Rusary::Parser.start
