#          Copyright (c) 2006 Michael Fellinger m.fellinger@gmail.com
# All files in this distribution are subject to the terms of the Ruby license.

class Numeric
  FILESIZE_FORMAT = [
      ['%.1fT', 1 << 40],
      ['%.1fG', 1 << 30],
      ['%.1fM', 1 << 20],
      ['%.1fK', 1 << 10],
    ]

  def filesize_format
    FILESIZE_FORMAT.each do |format, size|
      return format % (self.to_f / size) if self >= size
    end

    self.to_s
  end
end