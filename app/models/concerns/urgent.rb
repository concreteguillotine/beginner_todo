module Urgent
    extend ActiveSupport::Concern

    VALID_STATUSES = ['urgent', 'noncritical']

    included do
        validates :status, inclusion: { in: VALID_STATUSES }
    end

    class_methods do
        def urgent_count
            where(status: 'urgent').count
        end

        def noncritical_count
            where(status: 'noncritical').count
        end
    end
end