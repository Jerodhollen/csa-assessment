# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
require 'csv'

member_entries_csv = File.read(Rails.root.join('lib', 'seeds', 'csa_member_entries.csv'))
member_entries = CSV.parse(member_entries_csv, :headers => true, :encoding => 'utf-8')
member_entries.each do |row|
  e = MemberEntry.new
  e.organization = row['organization']
  e.service = row['service']
  e.description = row['description']
  e.scheme = row['scheme']
  e.created = row['created']
  e.asset_url = row['asset_url']
  e.save
end
