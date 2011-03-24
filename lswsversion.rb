Facter.add(:lsws_version) do
	confine :kernel => :linux
	setcode do
		if Facter.value(:operatingsystem) == "RedHat"
			if FileTest.exists?("/usr/local/lsws/bin/lshttpd")
				%x{/usr/local/lsws/bin/lshttpd -v}.chomp
			end
		end
	end
end
