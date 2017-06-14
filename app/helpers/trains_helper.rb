module TrainsHelper
  def route(train)
    starting_station = train.starting_station
    end_station = train.end_station
    items = []
    make_link items, starting_station
    make_link items, end_station

    items.join.html_safe
  end

  private

  def make_link(items, station)
    if station
      link = link_to(station.name, station_path(id: station.id))
      items << content_tag(:td, link.html_safe)
    end
  end
end



