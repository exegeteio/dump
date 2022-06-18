#!/usr/bin/env ruby

require "net/http"
require "uri"
require "active_support/all"

def parse_results(lines)
  result = Hash.new
  lines.each do |line|
    next unless line.match?(/:/)
    case line
    when /([\d.]+) ms\s+$/i
      result[:ping] = $1.to_f
    when /^upload: ([\d.]+)/i
      result[:upload] = $1.to_f
    when /^download: ([\d.]+)/i
      result[:download] = $1.to_f
    else
      puts "Unable to parse line: #{line}"
    end
  end
  result
end

Net::HTTP.post(
  URI("http://localhost:3000/api/speedtests"),
  parse_results(STDIN.readlines).merge(api_key: ENV["API_KEY"]).to_json,
  "Content-Type" => "application/json"
)
