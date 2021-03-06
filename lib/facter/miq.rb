Facter.add(:miq) do
  result = {}

  if File.exist? '/var/www/miq/vmdb/BUILD'
    result['build'] = File.open('/var/www/miq/vmdb/BUILD', &:readline).chomp
  end

  if File.exist? '/var/www/miq/vmdb/GUID'
    result['guid'] = File.open('/var/www/miq/vmdb/GUID', &:readline)
  end

  if File.exist? '/var/www/miq/vmdb/REGION'
    result['region'] = File.open('/var/www/miq/vmdb/REGION', &:readline)
  end

  if File.exist? '/var/www/miq/vmdb/VERSION'
    result['version'] = File.open('/var/www/miq/vmdb/VERSION', &:readline).chomp
  end

  # How do I get rails runner in here?
  # config = VMDB::Config.new("vmdb").config
  # result['role'] = config[:server][:role]

  setcode do
    result
  end
end
