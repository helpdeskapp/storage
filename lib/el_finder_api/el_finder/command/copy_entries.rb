module ElFinder
  class Command::CopyEntries < ElFinder::Command
    register_in_connector :paste

    class Arguments < Command::Arguments
      attr_accessor :targets, :src, :dst, :cut
      validates_presence_of :src, :dst, :targets

      validates :source, :destination, :has => {:type => :directory}
      validates :entries, :has => {:type => :entry}

      def cut?
        cut == '1' || cut == 'true' || cut == true
      end

      def source
        el_entry(dst)
      end

      def destination
        el_entry(dst)
      end
    end

    class Result < Command::Result
      def added
        execute_command
      end
      def removed
        arguments.cut? ? arguments.targets : []
      end
    end

    protected
      def execute_command
        arguments.entries.map do | el_entry |
          entry = arguments.cut? ? el_entry.entry : el_entry.entry.dup
          entry.tap do | entry |
            entry.parent = arguments.destination.entry
            entry.save!
          end
        end
      end
  end
end
