#!/usr/bin/env ruby
require_relative '../example'

require 'yaml'
require 'soap/wsdlDriver'
#gem install soap4r
example %q{
  
$VERBOSE=nil

wsdl_url = 'http://www.webservicex.net/WeatherForecast.asmx?WSDL'

proxy = SOAP::WSDLDriverFactory.new(wsdl_url).create_rpc_driver
weather_info = proxy.GetWeatherByZipCode('ZipCode' => '19128')
}
