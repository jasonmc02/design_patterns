module Subject
  def initialize
    @observers = []
  end
  
  def notify_observers
    @observers.each do |observer|
      observer.update(self)
    end
  end

  def add_observers(observer)
    @observers << observer
  end

  def delete_observers(observer)
    @observers.delete(observer)
  end
end
