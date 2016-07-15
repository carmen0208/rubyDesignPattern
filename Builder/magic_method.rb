class ComputerBuilder
  def method_missing(name , *args)
    words = name.to_s.split("_")
    return super(name, *args) unless words.shift == 'add'
    # builder.add_turbo_and_dvd_and_cd_and_harddisk
    words.each do |word|
      next if word == 'and'
      add_cd if word == 'cd'
      add_dvd if word == 'dvd'
      add_hard_disk(100000) if word == 'harddisk'
      turbo if word == 'turbo'
    end

  end
end
