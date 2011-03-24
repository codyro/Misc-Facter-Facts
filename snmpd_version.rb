Facter.add(:snmpd_version) do
	confine :kernel => :linux
	setcode do
		if FileTest.exists?("/usr/sbin/snmpd")
			snmpd_ver = %x{/usr/sbin/snmpd -v}.chomp
			snmpd_ver[/NET-SNMP version:  (\d+.+)\n/,1]
		end
	end
end
