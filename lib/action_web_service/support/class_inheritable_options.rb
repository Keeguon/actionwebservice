# encoding: UTF-8
class Class # :nodoc:
  def class_inheritable_option(sym, default_value=nil)
    class_attribute sym

    class_eval <<-EOS
      def self.#{sym}(value=nil)
        class_attribute :#{sym}
        if !value.nil?
          self.#{sym} = value
        end
      end
      
      def self.#{sym}=(value)
        class_attribute :#{sym}
        self.#{sym} = value
      end

      def #{sym}
        self.class.#{sym}
      end

      def #{sym}=(value)
        self.class.#{sym} = value
      end
    EOS
  end
end
