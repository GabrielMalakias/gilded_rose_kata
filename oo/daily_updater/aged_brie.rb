module OO
  class DailyUpdater::AgedBrie < DailyUpdater::Base

    def update
      if not_reaches_max_quality?(item)
        increase_quality!(item)
      end

      increase_quality!(item) if sell_on_or_after_date?(item) && not_reaches_max_quality?(item)

      decrease_sell_in!(item)
    end
  end
end

