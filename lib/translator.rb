require 'yaml'

def load_library(file_path)
 emoticons = YAML.load_file(file_path)
 japanese_icon = {}
 emoticons.each{|k,v|
   icon_of_jap = v[1]
  
   japanese_icon[icon_of_jap] = {}
 }
 new_hash ={
   :get_meaning => japanese_icon,
   :get_emoticon => 
 }
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end