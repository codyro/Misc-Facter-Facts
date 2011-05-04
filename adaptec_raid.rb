Facter.add(:adaptec_maxiq) do
    confine :kernel => :linux
    setcode do
        if Facter.value(:operatingsystem) == "RedHat"
            if FileTest.exists?("/usr/StorMan/arcconf")
                maxiq = %x{/usr/StorMan/arcconf getconfig 1 | grep 'MaxIQ preferred cache setting'}.chomp
                maxiq.strip[/MaxIQ preferred cache setting            : (.*)/,1]
            end
        end
    end
end

Facter.add(:adaptec_model) do
    confine :kernel => :linux
    setcode do
        if Facter.value(:operatingsystem) == "RedHat"
            if FileTest.exists?("/usr/StorMan/arcconf")
                model = %x{/usr/StorMan/arcconf getconfig 1 | grep 'Controller Model'}.chomp
                model.strip[/Controller Model                         : (.*)/,1]
            end
        end
    end
end
