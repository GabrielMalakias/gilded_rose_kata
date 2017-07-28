class Itm
  class Factory
    class QualityUpdater
      class Default
        def update(item)
          item.quality -= 1
          item.sell_in -= 1

          item.quality -= 1 if item.sell_in < 1
          item.quality = 0 if item.quality < 1
        end
      end
    end
  end
end
