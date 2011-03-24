Facter.add(:lsphp52_version) do
	setcode do
			if FileTest.exists?("/usr/local/lsws/fcgi-bin/lsphp5")
				%x{/usr/local/lsws/fcgi-bin/lsphp5 -v|head -n1}.chomp
			else
				"Unknown"
			end
	end
end

Facter.add(:lsphp53_version) do
	setcode do
			if FileTest.exists?("/usr/local/php53/bin/lsphp")
				%x{/usr/local/php53/bin/lsphp -v|head -n1}.chomp
			else
				"Unknown"
			end
	end
end

Facter.add(:phpcgi_version) do
	setcode do
			if FileTest.exists?("/usr/bin/php-cgi")
				%x{/usr/bin/php-cgi -v|head -n1}.chomp
			else
				"Unknown"
			end
	end
end
