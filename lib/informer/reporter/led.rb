module Reporter
  class Lcd
    
    LCD_DEV = "/dev/ttyS1"
    
    def self.report(messages)
      messages.each do |message|
        display do |led|
          led.write "LCD:\n#{message}\n"
        end
        sleep 3
      end
    end
    
    def self.display(&block)
      File.open(LCD_DEV, "w+") do |f|
        yield f
      end
    end
    
  end
end