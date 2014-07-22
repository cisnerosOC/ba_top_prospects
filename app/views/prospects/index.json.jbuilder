json.array! @prospects do |prospect|
  json.first_name prospect.first_name
  json.last_name  prospect.last_name
  json.team       prospect.team
  json.rank       prospect.rank
  json.position   prospect.position
end