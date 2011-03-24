Facter.add(:lvemanager_version) do
	confine :lsbdistid => "CloudLinuxServer"
	setcode do
		if Facter.value(:lsbdistid) == "CloudLinuxServer"
			%x{/bin/rpm -q cpanel-lvemanager}.chomp
		end
	end
end

Facter.add(:lvecpanel_version) do
	confine :lsbdistid => "CloudLinuxServer"
	setcode do
		if Facter.value(:lsbdistid) == "CloudLinuxServer"
			%x{/bin/rpm -q lve-cpanel-plugin}.chomp
		end
	end
end
