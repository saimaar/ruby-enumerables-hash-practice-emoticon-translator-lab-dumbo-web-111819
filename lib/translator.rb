require 'yaml'

def load_library(file_path)
 emoticons = YAML.load_file(file_path)
 japanese_icon = {}
 english_icon = {}
 
 emoticons.each{|k,v|
   icon_of_jap = v[1]
   icon_of_eng = v[0]
   japanese_icon[icon_of_jap] = k
   english_icon[icon_of_eng] = icon_of_jap
 }
 new_hash ={
   :get_meaning => japanese_icon,
   :get_emoticon => english_icon
 }
end

def get_japanese_emoticon(file_path, emoticon)
  obj = load_library(file_path)
  obj.each{|k,v|
    p obj[k][emoticon]
  }
end

def get_english_meaning
  # code goes here
end