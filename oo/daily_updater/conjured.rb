module OO
  class DailyUpdater::Conjured < DailyUpdater::Base

    def update
      decrease_quality!(item, 2)
      decrease_sell_in!(item)

      decrease_quality!(item, 2) if sell_on_or_after_date?(item)

      turn_zero_quality!(item) if negative_quality?(item)
    end
  end
end
