# frozen_string_literal: true

require_relative "network_connector/version"
require "net/ping"
require 'open-uri'
require 'watir'
require 'webdrivers'
require 'dotenv/load'
require "colorize"
require 'dotenv'
Dotenv.load('~/network_informations.env', 
  "~/.network_informations.env", 
  "~/network_informations", 
  "~/.network_informations")

module NetworkConnector
  class Error < StandardError; end
  # Your code goes here...

  class << self
    @@tries = 3
    @@connected = false
    def tries
      @@tries
    end

    def connected?
      @@connected
    end

    def start
      @@connected = has_internet?
      puts @@connected
      unless !@@connected
        @@tries -= 1
        connect
        if @@tries.eql?(0)
          puts "Ooops ! \n" \
            "We're sorry ! We've tried 3 times it failed \n" \
            "- Verify that you set all correct for network informations \n" \
            "- Perhaps the connection process is not support. \nIf so email us so we try to integrate it \n".red
        else
          start
        end
      else
        puts "Great ! You're connected !".green
        puts "Developed  ❤️ by @katakeynii!"
        @@connected = false
      end
    end

    def has_internet?
      Net::Ping::TCP.new("google.com", 'http')
    end
  
    def connect
      begin
        url = ENV["HOST"]
        browser = Watir::Browser.new :safari
        browser.goto(url)
        browser.send_keys :enter
      
        credentials = [
            {path: {id: ENV["INPUT_USERNAME_ID"]}, value: ENV["USERNAME"]},
            {path: {id: ENV["INPUT_PASSWORD_ID"]}, value: ENV["PASSWORD"]}
        ]
        button_id = ENV["SUBMIT_BTN"]
        credentials.each do |element|
            text_field = browser.text_field(element[:path])
            text_field.set element[:value]
        end
        browser.wait(20)
        browser.input({id: button_id}).click
        
        if ENV["HAS_CONFIRMATION_BUTTON"].eql?("true")
          browser.input({id: ENV["CONFIRMATION_BUTTON"]}).click
          browser.wait(30)
        end
    
        browser.close
      rescue => exception
        puts "Ooops ! \n" \
        "Please make sure that you are connected to the private wifi\n".red

      end
    end
  end

end
