Facter.add('miq_region') do
  setcode do
    if File.exist? '/var/www/miq/vmdb/REGION'
      File.open('/var/www/miq/vmdb/REGION', &:readline)
    end
  end
end
