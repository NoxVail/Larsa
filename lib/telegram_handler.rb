class TelegramHandler
  attr_accessor :text

  def initialize(text:)
    self.text = text
  end

  def method_missing(symbol, *args)
    text
  end

  def topic
    Topic.pluck(:name).each_with_index.map { |name, index| "#{index+1}. #{name}"}.join("\n")
  end
end
