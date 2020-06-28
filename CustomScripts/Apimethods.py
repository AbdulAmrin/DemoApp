import requests
import jsonpath
import json 
from requests.auth import HTTPBasicAuth

 
class Apimethods:
 
      def get_response(self,url,username,password):
          response_data = requests.get(url, 
          auth = HTTPBasicAuth(username, password)) 
          return response_data.text
 
 
      def extract_response_content(self,response,match):
          json_response=json.loads(response)
          extracted_data=jsonpath.jsonpath(json_response,match) 
          return  extracted_data
           
      def get_users(self,url,token):
          response_data = requests.get(url, headers={'Token': token, 'Content-Type': 'application/json'})
          return response_data.content
           
      
      def update_users(self,url,token,payload):
          response_data = requests.put(url,headers={'Token': token,'Content-Type': 'application/json'},data=payload)
          return response_data.text

